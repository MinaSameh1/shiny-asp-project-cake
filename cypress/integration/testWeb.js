
define("Library Books - Logging in" , ()=> {

Cypress.on('uncaught:exception', (err, runnable) => {
  // returning false here prevents Cypress from
  // failing the test
  return false
});
    const username = 'krista02';
    const password = '1234';

    it('Visit Website', () => {
        cy.visit('localhost:8000/index.aspx');
    });

    it('Can login', () => {
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
    });

});
