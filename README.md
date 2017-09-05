# _Green State_

![home](https://user-images.githubusercontent.com/25161777/30040877-c1d95a50-9199-11e7-9f2b-04cf5ac537ea.png)


[Visit the Site!](https://green-state.herokuapp.com/)

Green State, a great way to compete across Northwest state lines for ecological benefit and bragging rights! This rails site was built over Labor day weekend 2017 as an effort to demonstrate a snap shot of my environmental science, database management, data analysis, and programming proficiencies.

Sign up and take the quiz to estimate your monthly carbon dioxide emittance. Then check out how your data stacks up against others individually, or collectively in the data page. See how states compare graphically and statistically through chartkick graphing and an integrated t-test tied to the database for dynamic analysis. T-score calculated manually, and the statsample library provides the calculus to find p-values.

Seeded with the faker gem, these results aren't reflective of real live users, but they give a great simulation of how this filled data-base would look like and operate.

This site's inspiration and methods for the carbon quiz was borrowed with permission from its original iteration: https://github.com/gravytates/carbon-estimator where I originally built the simple application with Dana Weiss and Ben Williams.

Enjoy!

## Prerequisites

Web browser with ES6 compatibility
Examples: Chrome, Safari

### Installing

Clone this repo by typing into the terminal:

```
$ git clone https://github.com/gravytates/green_state.git
```

In a new terminal window, start postgres in the background:
```
$ postgres
```
Ensure you are using Ruby 2.4.1 by typing:
```
$ ruby -v
```

If you are not running version 2.4.1 please look into a Ruby version manager. I suggest RVM or Chruby.

Navigate to this project directory in the terminal. Then type:

```
$ bundle install
```

After the gems are installed set up the database:

```
$ bundle exec rails db:setup
```

To run the app:
```
$ bundle exec rails server
```
If all went well, rails will now make this project available in your browser by going to localhost:3000.

Sign up with your own secured account or log in with one of the seed accounts with the provided credentials:
```
email: operson_1@example.com
```
```
password: 123456
```

### Testing

This application includes both Unit and User Integration testing.  It primarily uses RSpec, Capybara, and Shoulda-Matchers.

## Code Samples

### database scopes

```
  scope :alphabetical, ->  { joins(:user).merge(User.order(name: :asc)) }
  scope :reverse_alpha, ->  { joins(:user).merge(User.order(name: :desc)) }
  scope :highest, -> { order(monthly_emittance: :desc) }
  scope :lowest, -> { order(monthly_emittance: :asc) }
  scope :newest, -> { order(created_at: :desc) }
  scope :oldest, -> { order(created_at: :asc) }

  scope :oregon, -> { joins(:user).merge(User.where(state: "Oregon")) }
  scope :washington, -> { joins(:user).merge(User.where(state: "Washington")) }
```

### t_value

```
  ...

  numerator = o_avg - w_avg
  preSQRT = ((o_st_dev ** 2)/o_n) + ((w_st_dev ** 2)/w_n)
  denominator = Math.sqrt(preSQRT)
  t_value = (numerator / denominator).round(3)

  ...

```

### statsample p value

```
  t_2=Statsample::Test::T::TwoSamplesIndependent.new(o, w)
  if t_2.probability_equal_variance < 0.05 && t_2.probability_equal_variance > 0.000001
  p_with_equal_variance = '< 0.05 There is a statistically significant difference between states!'

  ...
```

### chartkick column chart

```
  <%= column_chart Co2Estimate.joins(:user).merge(User.group(:state)).average(:monthly_emittance), ytitle: "Emittance (CO2 lbs/mo)" %>
```


## Screenshots

### Landing

![home](https://user-images.githubusercontent.com/25161777/30040877-c1d95a50-9199-11e7-9f2b-04cf5ac537ea.png)
### Data

![quiz](https://user-images.githubusercontent.com/25161777/30040063-b0eec12c-918e-11e7-90e4-2ff37ec8bbb2.png)

### Analysis

![data1](https://user-images.githubusercontent.com/25161777/30040065-b7fea9b4-918e-11e7-824a-2afdc1f5064f.png)

![data2](https://user-images.githubusercontent.com/25161777/30040067-b80148c2-918e-11e7-9baa-31adbd4f6ed7.png)

### Profile

![profile](https://user-images.githubusercontent.com/25161777/30040066-b7ff3050-918e-11e7-91ee-8a5eaa5f9ebc.png)

### Test Coverage

## Authors

* Grady Shelton

### Technologies Used

* Ruby
* Rails
* Bundler
* Postgres
* RSpec
* Javascript (ES6)
* Jquery 3
* HTML5
* SASS
* FactoryGirl
* devise
* SimpleCov
* Statsample
* Chartkick

## License

MIT License

Copyright (c) 2017 Grady Shelton
Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
