<?php

use App\Models\Portfolio;
use App\Models\PortfolioProgrammingTechnology;
use App\Models\ProgrammingTechnology;
use Illuminate\Database\Seeder;

class PortfolioSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // Create some programming technology first
        $this->createProgrammingTechnologies();

        if (is_null(Portfolio::where('slug', 'ibos')->first())) {
            $portfolio = new Portfolio();
            $portfolio->title = "iBOS - A Big ERP Solution";
            $portfolio->slug = "ibos";
            $portfolio->start_date = "2020-02-01";
            $portfolio->end_date = null;
            $portfolio->is_running = true;
            $portfolio->category_id = 2;
            $portfolio->user_id = 1;
            $portfolio->image = "http://127.0.0.1:8200/MyPortfolioAPI/public/images/portfolios/ibos.png";
            $portfolio->logo = "http://127.0.0.1:8200/MyPortfolioAPI/public/images/portfolios/ibos-logo.png";
            $portfolio->live_link = "https://webappdev.akij.net/";
            $portfolio->github_link = null;
            $portfolio->short_description = "iBOS is for Intelligent Business Operating System is for a corporate, multinational, group of companies big ERP solution";
            $portfolio->long_description = "iBOS is for Intelligent Business Operating System is for a corporate, multinational, group of companies big ERP solution";
            $portfolio->client = "Akij Group Ltd.";
            $portfolio->order_priority = 1;
            $portfolio->save();

            // Add programming technology
            $ppt = new PortfolioProgrammingTechnology();
            $ppt->portfolio_id = $portfolio->id;
            $ppt->pt_id = 1;
            $ppt->save();

            $ppt = new PortfolioProgrammingTechnology();
            $ppt->portfolio_id = $portfolio->id;
            $ppt->pt_id = 2;
            $ppt->save();

            $ppt = new PortfolioProgrammingTechnology();
            $ppt->portfolio_id = $portfolio->id;
            $ppt->pt_id = 4;
            $ppt->save();

            $ppt = new PortfolioProgrammingTechnology();
            $ppt->portfolio_id = $portfolio->id;
            $ppt->pt_id = 7;
            $ppt->save();

            $ppt = new PortfolioProgrammingTechnology();
            $ppt->portfolio_id = $portfolio->id;
            $ppt->pt_id = 8;
            $ppt->save();
        }

        // Add for PSTU
        if (is_null(Portfolio::where('slug', 'pstu')->first())) {
            $portfolio = new Portfolio();
            $portfolio->title = "PSTU - A University Website";
            $portfolio->slug = "pstu";
            $portfolio->start_date = "2018-02-02";
            $portfolio->end_date = "2018-06-30";;
            $portfolio->is_running = true;
            $portfolio->category_id = 2;
            $portfolio->user_id = 1;
            $portfolio->image = "http://127.0.0.1:8200/MyPortfolioAPI/public/images/portfolios/pstu.png";
            $portfolio->logo = "http://127.0.0.1:8200/MyPortfolioAPI/public/images/portfolios/pstu-logo.png"; // logo added

            $portfolio->live_link = "https://pstu.ac.bd/";
            $portfolio->github_link = null;
            $portfolio->short_description = "iBOS is for Intelligent Business Operating System is for a corporate, multinational, group of companies big ERP solution";
            $portfolio->long_description = "iBOS is for Intelligent Business Operating System is for a corporate, multinational, group of companies big ERP solution";
            $portfolio->client = "Akij Group Ltd.";
            $portfolio->order_priority = 2;
            $portfolio->save();

            // Add programming technology
            $ppt = new PortfolioProgrammingTechnology();
            $ppt->portfolio_id = $portfolio->id;
            $ppt->pt_id = 1;
            $ppt->save();

            $ppt = new PortfolioProgrammingTechnology();
            $ppt->portfolio_id = $portfolio->id;
            $ppt->pt_id = 2;
            $ppt->save();

            $ppt = new PortfolioProgrammingTechnology();
            $ppt->portfolio_id = $portfolio->id;
            $ppt->pt_id = 4;
            $ppt->save();

            $ppt = new PortfolioProgrammingTechnology();
            $ppt->portfolio_id = $portfolio->id;
            $ppt->pt_id = 5;
            $ppt->save();

            $ppt = new PortfolioProgrammingTechnology();
            $ppt->portfolio_id = $portfolio->id;
            $ppt->pt_id = 6;
            $ppt->save();

            $ppt = new PortfolioProgrammingTechnology();
            $ppt->portfolio_id = $portfolio->id;
            $ppt->pt_id = 8;
            $ppt->save();
        }
    }

    public function createProgrammingTechnologies()
    {
        if (is_null(ProgrammingTechnology::where('slug', 'html')->first())) {
            $pt = new ProgrammingTechnology();
            $pt->id = 1;
            $pt->name = "HTML";
            $pt->slug = "html";
            $pt->save();
        }

        if (is_null(ProgrammingTechnology::where('slug', 'css')->first())) {
            $pt = new ProgrammingTechnology();
            $pt->id = 2;
            $pt->name = "CSS";
            $pt->slug = "css";
            $pt->save();
        }

        if (is_null(ProgrammingTechnology::where('slug', 'php')->first())) {
            $pt = new ProgrammingTechnology();
            $pt->id = 3;
            $pt->name = "PHP";
            $pt->slug = "php";
            $pt->save();
        }

        if (is_null(ProgrammingTechnology::where('slug', 'javascript')->first())) {
            $pt = new ProgrammingTechnology();
            $pt->id = 4;
            $pt->name = "JavaScript";
            $pt->slug = "javascript";
            $pt->save();
        }

        if (is_null(ProgrammingTechnology::where('slug', 'laravel')->first())) {
            $pt = new ProgrammingTechnology();
            $pt->id = 5;
            $pt->name = "Laravel";
            $pt->slug = "laravel";
            $pt->save();
        }

        if (is_null(ProgrammingTechnology::where('slug', 'vue-js')->first())) {
            $pt = new ProgrammingTechnology();
            $pt->id = 6;
            $pt->name = "Vue JS";
            $pt->slug = "vue-js";
            $pt->save();
        }

        if (is_null(ProgrammingTechnology::where('slug', 'react-js')->first())) {
            $pt = new ProgrammingTechnology();
            $pt->id = 7;
            $pt->name = "React JS";
            $pt->slug = "react-js";
            $pt->save();
        }

        if (is_null(ProgrammingTechnology::where('slug', 'bootstrap-css')->first())) {
            $pt = new ProgrammingTechnology();
            $pt->id = 8;
            $pt->name = "Bootstrap CSS";
            $pt->slug = "bootstrap-css";
            $pt->save();
        }
    }
}
