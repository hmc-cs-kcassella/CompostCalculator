# Compost Calculator

For compost to process material efficiently and without odor, it must have an optimal carbon to nitrogen ratio, stay within a certain temperature range, and fall within a specific moisture content range as well. To assist a person that wants to compost in obeying these ranges, the Compost Calculator creates a virtual compost and informs the user if their actions will lead to an efficient compost.

The Compost Calculator takes the very meticulous process of composting and makes it fun and easy for both first time composters and experienced eco warriors. Simply enter the items placed into the compost, the temperature at which these items were placed, then heed the notifications about what to add, when to empty, and when to aerate to have a successful composter!

## Installation

  ### Prerequisites

  Download and install: 
  
  - Ruby
  - Rails
  - Git

  ### Downloading and Running

  Run on preferred directory:

  `git clone https://github.com/hmc-cs-kcassella/CompostCalculator.git`

  To set up the app on your local server, navigate to the directory named `Compost Calculator` and run:

  `rails bundle install`
  `rails db:migrate`

  To start the server, navigate to the directory named `app` and run:

  `rails s`

  or

  `rails start`

  You should be able to use the web application now on your local server. Enjoy!

## Usage

  ### Register
  
  Register to create profile and a new composter

  ### Login
  
  Login to pick up where you left off and check that status of your composters

  ### Create New Composter
  
  Create a new composter by naming it whatever you like, adding its temperature, and contents

  ### Edit Composter

  Edit the contents of your composter when you add an item. This results in a change in carbon-nitrogen ratio.

  ### Delete Composter

  Delete your composter whenever you like or if you're done with it. No problem!

  ### Logout

  Logout whenever you're done adding items to your composter. Come back whenever and your information will be saved!

## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D

## History

Whether it be through grassroots student activism or establishing administrative policies that reduce environmental impact, the Claremont Colleges have always believed in doing their part to help create a better world. These colleges, along with the students that attend these institutions, have dedicated a copious amount of time and effort to wrestling with the environmental problems we face as a community and to teaching and maintain sustainable philosophies and practices. One group in particular – Engineers for a Sustainable World and Mudders Organizing for Sustainability Solutions (ESW/MOSS) – has made it their mission to further educate and get more Mudd and Claremont College students to participate in these sustainability efforts by making said efforts easier to understand and more fun to participate. 

Enter the Composting Calculator. Composting has clear benefits like reducing waste and saving energy. If more people committed to composting landfill waste would decrease drastically, methane levels on the plant would drop to historic lows, overall air quality would increase and erosion would decrease leading to a greater protection of the water sources for our communities. However, managing a composter takes precision: efficient composters stay within the temperature range of 40 C to 60 C, there should be around 25 to 30 carbons per nitrogen, and moisture content also needs to within the 40%-60% boundary. This required precision can be difficult for first-time users and large mass users. The Compost Calculator attempts to solve this issue in an elegant and accessible way.

## Credits

  ### Authors
    - Elise Cassella
    - Juan Zamudio
    - Drew Summy
    - Errol Francis
  
  ### Client
  ESW/MOSS at Harvey Mudd College

  ### Advisors
    - Professor Yekaterina Kharitonova from Harvey Mudd College
    - Marina Kent (Teaching Assistant) from Harvey Mudd College

  ### Resources
    - Information on Composting Science
      
      http://compost.css.cornell.edu

    - Ruby on Rails
      
      http://railsinstaller.org/
      https://rubyinstaller.org/

    - How to Build Instagram Tutorial

      https://www.youtube.com/watch?v=MpFO4Zr0EPE&

    - Active Record Association Documentation
      
      http://guides.rubyonrails.org/association_basics.html#choosing-between-belongs-to-and-has-one

    - SQLlite Usage and Documentation

      https://www.sqlite.org/

    - Bootstrap and Creative Tim Theme
      
      https://github.com/twbs/bootstrap

      https://github.com/creativetimofficial

    - Devise Gem

      https://github.com/plataformatec/devise

## License

MIT License

Copyright (c) 2017 Juan Zamudio, Katherine Cassella, Errol Francis, Drew Summy

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.