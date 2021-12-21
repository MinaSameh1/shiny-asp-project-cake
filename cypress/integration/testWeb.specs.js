
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

    it('Can login', () => {
        // Login first
        cy.visit('localhost:8000/index.aspx');
        cy.get('#panel1').click();
        cy.get("h5")
            .should('contain',"Login to Your Account");
        cy.get('input[id=ContentPlaceHolder1_Login1_UserName]')
        .click({force : true}).type(username);
        cy.get('input[id=ContentPlaceHolder1_Login1_PassText]')
        .click({force : true}).type(password);
        cy.get('input[id=ContentPlaceHolder1_Login1_Button1]')
        .click();
        cy.get("#ProfilePanel")
        .get('span').should('contain','Welcome! ' + username);

        // Go to profile
        cy.get('li[class=dropdown]')
        .get('a[id=Profile]').click({force : true});

        // I dunno why but click the button twice
        cy.get('input[id=ContentPlaceHolder1_GridView1_btnEdit_0]')
        .click({ force : true });
        cy.get('input[id=ContentPlaceHolder1_GridView1_btnEdit_0]')
        .click({ force : true });
        cy.get('input[id=ContentPlaceHolder1_GridView1_NameText_0]')
        .click({force:true}).clear().type(newUserName);
        cy.get('input[id=ContentPlaceHolder1_GridView1_passText_0]')
        .click({force:true}).clear().type('12345');
        cy.get('input[id=ContentPlaceHolder1_GridView1_btnUpdate_0]')
        .click({force: true });
    });

});
