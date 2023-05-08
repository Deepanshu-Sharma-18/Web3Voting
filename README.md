# Web3 Elections

Web3 Elections is a web application built to allow anyone to start or host elections. The person who starts the election becomes the owner and only the owner can add candidates and voters for that particular election.

## Technologies Used

- React.js
- Solidity
- Web3.js
- Ethers.js
- JavaScript

## Getting Started

To get started with Web3 Elections, you need to visit https://web3elections.vercel.app/ in your web browser. Metamask must be installed in your browser as it is used to login and execute all transactions.

## Limitaions and Future Improvements

Currently, We don't have an options for deleting elections, Removing Candidates, Removing Voters and much more.
You'll need to start new election for above :(

## Usage

To start an election, click on the "Create Election" button on the home page. This will prompt you to enter the name of the election you want to create. Once you enter the name, click on the "Create Election" button to create the election. You will be automatically assigned as the owner of the election.

As the owner of the election, you can now add candidates and voters for the election. To add a candidate, click on the "Add Candidate" button, enter the name of the candidate, and click on the "Add Candidate" button to save the candidate. To add a voter, click on the "Add Voter" button, enter the Ethereum wallet address of the voter, and click on the "Add Voter" button to save the voter.

You will be redirected to a new page where you can see the list of all candidates or voters you have added. From there, you can also edit or delete the candidates or voters if needed.

Once you have added all the candidates and voters, you can click on the "Start Election" button to start the election. This will make the election live and voters can start casting their votes.

Candidates can be added just by their name. Voters can be added using their Ethereum wallet address or public key. Once they are added, they can cast their votes for their preferred candidate. Each voter can only vote once.

Once the election is over, the results are automatically calculated and displayed. The owner of the election can end the election at any time by clicking on the "End Election" button.

## Deployment

Web3 Elections is deployed on Vercel and can be accessed at https://web3elections.vercel.app/. The application uses Ethereum smart contracts to manage the election and the Web3.js library to interact with the Ethereum blockchain.

## Contributing

Contributions to Web3 Elections are welcome. If you would like to contribute, please fork the repository and submit a pull request.
You can ping me and work on limitations mentioned above.

## License

Web3 Elections is licensed under the MIT License. See `LICENSE` for more information.
