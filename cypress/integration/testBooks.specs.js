
const path = require('path');

define("BOOKKKSSS", () => {

    // Clear the downloads folder
    before('Clear downloads folder', () => {
       cy.exec('rd /s /q "cypress/downloads/Book.pdf"', { log: true, failOnNonZeroExit: false });
    });

    Cypress.on('uncaught:exception', (err, runnable) => {
        // returning false here prevents Cypress from
        // failing the test
        return false;
    });

    const username = 'john76';
    const password = '1234';
    const downloadedFilename = path.join('cypress/downloads/Book.pdf');

    beforeEach('Visit Website', () => {
        cy.visit('localhost:8000/Books.aspx');
    });

    it('Visit Website', () => {
        cy.get("div.container");
    });

    it('Can switch pages', () => {
        cy.visit('localhost:8000/Books.aspx');
        cy.get('table:first');
        cy.contains('td', 'Last')  // gives you the cell 
            .siblings()  // gives you all the other cells in the row
            .contains('a', '4') // finds the button
            .click();
    });

    it('Can purchase', () => {
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
});