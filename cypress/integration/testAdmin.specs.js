import 'cypress-file-upload';
const faker = require('faker');

define("Library Books - Logging in" , ()=> {

Cypress.on('uncaught:exception', (err, runnable) => {
  // returning false here prevents Cypress from
  // failing the test
  return false
});
    const username  = 'krista023';
    const newUserName = 'krista02';
    const password = '12345';

    it('Visit Website', () => {
        cy.visit('localhost:8000/index.aspx');
    });

    /*
    it('Can login as admin and as user', () => {
        const user = "pamela14";
        const pass = "1234";
        const adminName = "test";
        const adminPass = "1234";

        // Login first as normal user
        cy.visit('localhost:8000/index.aspx');
        cy.get('#panel1').click();
        cy.get("h5")
            .should('contain',"Login to Your Account");
        cy.get('input[id=ContentPlaceHolder1_Login1_UserName]')
        .click({force : true}).type(user);
        cy.get('input[id=ContentPlaceHolder1_Login1_PassText]')
        .click({force : true}).type(pass);
        cy.get('input[id=ContentPlaceHolder1_Login1_Button1]')
        .click();
        cy.get("#ProfilePanel")
        .get('span').should('contain','Welcome! ' + user);

        // Check if he can see admin and logout
        cy.get('li[class=dropdown]')
        .should('not.have','a[id=Admin]');
        cy.get('li[class=dropdown]')
        .get('a[id=Logout]').click({force : true});

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
    */

    it('Can Add new book and user ', () => {

        const adminName = "test";
        const adminPass = "1234";

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
        //cy.viewport(1920,1080);

        /*
        var randomName = faker.internet.userName(); 
        var randomEmail = faker.internet.email();
        var pass = "123456";

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
        */

        cy.fixture('fine.png').then(fileContent => {
            cy.get('input[type="file"]').attachFile({
                fileContent: fileContent.toString(),
                fileName: 'doesntwork.png',
                mimeType: 'image/png'
            });
        });

        var title = faker.name.title();
        var author = faker.name.firstName();

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
});