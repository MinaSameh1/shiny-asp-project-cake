
const faker = require('faker');
import 'cypress-file-upload';

define("Library Books - Register" , ()=> {

Cypress.on('uncaught:exception', (err, runnable) => {
  // returning false here prevents Cypress from
  // failing the test
  return false;
});

    beforeEach('Visit Website', () => {
        cy.visit('localhost:8000/index.aspx');
    });

    var randomName = faker.internet.userName();
    var randomEmail = faker.internet.email();
    var pass = "123456";
    const adminName = "test";
    const adminPass = "1234";
    const username = 'wsanchez';
    const password = '1234';

    it('Can Open the Website', () => {
        cy.get("div.container");
    });

    
    it('Can Open Books page and switch pages', () => {
        cy.visit('localhost:8000/Books.aspx');
        cy.get('table:first');
        cy.contains('td', 'Last')  // gives you the cell 
            .siblings()  // gives you all the other cells in the row
            .contains('a', '4') // finds the button
            .click();
    });


    it('Login then purchase a book', () => {
        cy.visit('localhost:8000/Books.aspx');
        cy.get('a[id=ContentPlaceHolder1_GridView1_lkAdd_3]')
            .click({ force: true });
        cy.get('input[id=ContentPlaceHolder1_Button1]')
            .click({ force: true });
        cy.get("h5")
            .should('contain', "Login to Your Account");

        cy.get('input[id=ContentPlaceHolder1_Login1_UserName]')
            .click({ force: true }).type(username);

        cy.get('input[id=ContentPlaceHolder1_Login1_PassText]')
            .click({ force: true }).type(password);

        cy.get('input[id=ContentPlaceHolder1_Login1_Button1]')
            .click({force : true});

        cy.get("#ProfilePanel")
            .get('span').should('contain', 'Welcome! ' + username);

        cy.get('input[id=ContentPlaceHolder1_Button1]')
            .click({ force: true });

        cy.get('h2[id=down]').should('contain', 'Download begins now');

    });

    it('can register', () => {
        // Get to login 
        cy.get('#panel1').click();
        cy.get("h5")
            .should('contain',"Login to Your Account");
        cy.get('a[id=register]').click({froce : true});
        cy.get('input[id=ContentPlaceHolder1_Register1_email]')
        .click({force : true}).type(randomEmail);
        cy.get('input[id=ContentPlaceHolder1_Register1_name]')
        .click({force : true}).type(randomName);
        cy.get('input[id=ContentPlaceHolder1_Register1_pass]')
        .click({force : true}).type(pass);

        cy.get('input[id=ContentPlaceHolder1_Register1_confPass]')
        .click({force : true}).type(123);
        cy.get('span[id=ContentPlaceHolder1_Register1_CompareValidator1]')
        .should('contain', 'Confirm password isn\'t equal to password');

        cy.get('input[id=ContentPlaceHolder1_Register1_confPass]')
        .click({force : true}).clear().type(pass);

        cy.get('input[id=ContentPlaceHolder1_Register1_acceptTerms]')
        .click({force : true});

        cy.get('input[id=ContentPlaceHolder1_Register1_Button1]')
        .click({force : true});
    });


    it('Can Login, go to profile and Edit, then logout', () => {
        cy.get('#panel1').click();
        cy.get("h5")
            .should('contain',"Login to Your Account");
        cy.get('input[id=ContentPlaceHolder1_Login1_UserName]')
        .click({force : true}).type(randomName);
        cy.get('input[id=ContentPlaceHolder1_Login1_PassText]')
        .click({force : true}).type(pass);
        cy.get('input[id=ContentPlaceHolder1_Login1_Button1]')
        .click();
        // Check if he is logged in
        cy.get("#ProfilePanel")
        .get('span').should('contain','Welcome! ' + randomName);

        // Go to profile
        cy.get('li[class=dropdown]')
        .get('a[id=Profile]').click({force : true});

        // Edit 
        cy.get('input[id=ContentPlaceHolder1_GridView1_btnEdit_0]')
        .click({ force : true });
        cy.get('input[id=ContentPlaceHolder1_GridView1_NameText_0]')
        .click({force:true}).clear().type(randomName);
        cy.get('input[id=ContentPlaceHolder1_GridView1_passText_0]')
        .click({force:true}).clear().type('12345678');
        cy.get('input[id=ContentPlaceHolder1_GridView1_btnUpdate_0]')
        .click({force: true });

        // Check if he can see admin and logout
        cy.get('li[class=dropdown]')
        .should('not.have','a[id=Admin]');
        cy.get('li[class=dropdown]')
        .get('a[id=Logout]').click({force : true});
    });

    it('Can login as Admin', ()=>{
        // Login then as admin
        cy.visit('localhost:8000/index.aspx');
        cy.get('#panel1').click();
        cy.get("h5")
            .should('contain',"Login to Your Account");
        cy.get('input[id=ContentPlaceHolder1_Login1_UserName]')
        .click({force : true}).type(adminName);
        cy.get('input[id=ContentPlaceHolder1_Login1_PassText]')
        .click({force : true}).type(adminPass);
        cy.get('input[id=ContentPlaceHolder1_Login1_Button1]')
        .click();
        cy.get("#ProfilePanel")
            .get('span').should('contain', 'Welcome! ' + adminName);

        // Go to admin page
        cy.get('li[class=dropdown]')
            .get('a[id=Admin]').click({ force: true });
        // LogOut
        cy.get('li[class=dropdown]')
        .get('a[id=Logout]').click({force : true});
    });

    it('Can Add new book and user ', () => {
        cy.viewport(1920, 1080);


        // Login then as admin
        cy.visit('localhost:8000/index.aspx');
        cy.get('#panel1').click();
        cy.get("h5")
            .should('contain',"Login to Your Account");
        cy.get('input[id=ContentPlaceHolder1_Login1_UserName]')
        .click({force : true}).type(adminName);
        cy.get('input[id=ContentPlaceHolder1_Login1_PassText]')
        .click({force : true}).type(adminPass);
        cy.get('input[id=ContentPlaceHolder1_Login1_Button1]')
        .click();
        cy.get("#ProfilePanel")
            .get('span').should('contain', 'Welcome! ' + adminName);

        // Go to admin page
        cy.get('li[class=dropdown]')
            .get('a[id=Admin]').click({ force: true });

        // Our Vars that we will use randomized
        var title = faker.name.title();
        var author = faker.name.firstName();
        randomName = faker.internet.userName();
        randomEmail = faker.internet.email();

        // Go the the user and add it 
        cy.get('input[id=ContentPlaceHolder1_GridView1_nameNew]')
        .click({force:true}).type(randomName);
        cy.get('input[id=ContentPlaceHolder1_GridView1_emailNew]')
        .click({force:true}).type(randomEmail);
        cy.get('input[id=ContentPlaceHolder1_GridView1_passNew]')
        .click({force:true}).type(pass);
        cy.get('input[id=ContentPlaceHolder1_GridView1_typeNew]')
        .click({ force : true}).type('1');
        cy.get('input[id=ContentPlaceHolder1_GridView1_btnAddUser]')
        .click({ force : true});

        cy.get('a[href="javascript:__doPostBack(\'ctl00$ContentPlaceHolder1$GridView1\',\'Page$Last\')"]')
        .click({ force : true});

        cy.get('table:first')
        .contains('td',randomName)
        .should('contain',randomName);

        cy.fixture('fine.png').then(() => {
            cy.get('input[type="file"]').attachFile({
                fileName: 'fine.png',
                mimeType: 'image/png'
            });
        });



        // Edit titlte and author
        cy.get('input[id=ContentPlaceHolder1_GridView2_newTitle]')
        .type(title);
        cy.get('input[id=ContentPlaceHolder1_GridView2_newAuthor]')
        .type(author);
        cy.get('input[id=ContentPlaceHolder1_GridView2_newTotalPages]')
        .type(200);
        cy.get('input[id=ContentPlaceHolder1_GridView2_newLang]')
        .type('English');
        cy.get('input[id=ContentPlaceHolder1_GridView2_newPublishData]')
        .type(faker.date.between('2000-01-01', '2020-01-05').toLocaleDateString());
        cy.get('input[id=ContentPlaceHolder1_GridView2_newSeries]')
        .type('Single');
        cy.get('input[id=ContentPlaceHolder1_GridView2_btnAddUser]')
        .click();
        cy.get('a[href="javascript:__doPostBack(\'ctl00$ContentPlaceHolder1$GridView2\',\'Page$Last\')"]')
        .click({force : true});

    });

    it('Can Add new user as Admin', () => {
        // Login then as admin
        cy.visit('localhost:8000/index.aspx');
        cy.get('#panel1').click();
        cy.get("h5")
            .should('contain',"Login to Your Account");
        cy.get('input[id=ContentPlaceHolder1_Login1_UserName]')
        .click({force : true}).type(adminName);
        cy.get('input[id=ContentPlaceHolder1_Login1_PassText]')
        .click({force : true}).type(adminPass);
        cy.get('input[id=ContentPlaceHolder1_Login1_Button1]')
        .click();
        cy.get("#ProfilePanel")
            .get('span').should('contain', 'Welcome! ' + adminName);

        // Go to admin page
        cy.get('li[class=dropdown]')
            .get('a[id=Admin]').click({ force: true });

        randomName = faker.internet.userName();
        randomEmail = faker.internet.email();
        // Add New user
        cy.get('input[id=ContentPlaceHolder1_GridView1_nameNew]')
        .click({force:true}).type(randomName);
        cy.get('input[id=ContentPlaceHolder1_GridView1_emailNew]')
        .click({force:true}).type(randomEmail);
        cy.get('input[id=ContentPlaceHolder1_GridView1_passNew]')
        .click({force:true}).type(pass);
        cy.get('input[id=ContentPlaceHolder1_GridView1_typeNew]')
        .click({ force : true}).type('1');
        cy.get('input[id=ContentPlaceHolder1_GridView1_btnAddUser]')
        .click({ force : true});

        // LogOut
        cy.get('li[class=dropdown]')
        .get('a[id=Logout]').click({force : true});

        // Login then as new admin 
        cy.visit('localhost:8000/index.aspx');
        cy.get('#panel1').click();
        cy.get("h5")
            .should('contain',"Login to Your Account");
        cy.get('input[id=ContentPlaceHolder1_Login1_UserName]')
        .click({force : true}).type(randomName);
        cy.get('input[id=ContentPlaceHolder1_Login1_PassText]')
        .click({force : true}).type(randomEmail);
        cy.get('input[id=ContentPlaceHolder1_Login1_Button1]')
        .click();
        cy.get("#ProfilePanel")
            .get('span').should('contain', 'Welcome! ' + randomName);


        // Go to admin page
        cy.get('li[class=dropdown]')
            .get('a[id=Admin]').click({ force: true });

    });
});
    