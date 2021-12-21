
const faker = require('faker');

define("Library Books - Register" , ()=> {

Cypress.on('uncaught:exception', (err, runnable) => {
  // returning false here prevents Cypress from
  // failing the test
  return false;
});

    beforeEach('Visit Website', () => {
        cy.visit('localhost:8000/index.aspx');
    });

    it('Visit Website', () => {
        cy.get("div.container");
    });

    it('can register', () => {
        var randomName = faker.internet.userName(); 
        var randomEmail = faker.internet.email();
        var pass = "123456";
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

        cy.get('#panel1').click();
        cy.get("h5")
            .should('contain',"Login to Your Account");
        cy.get('input[id=ContentPlaceHolder1_Login1_UserName]')
        .click({force : true}).type(randomName);
        cy.get('input[id=ContentPlaceHolder1_Login1_PassText]')
        .click({force : true}).type(pass);
        cy.get('input[id=ContentPlaceHolder1_Login1_Button1]')
        .click();
        cy.get("#ProfilePanel")
        .get('span').should('contain','Welcome! ' + randomName);

        // Go to profile
        cy.get('li[class=dropdown]')
        .get('a[id=Profile]');
    });
});