# frozen_string_literal: true

require 'bundler/checkout/version'

module Bundler
  module Checkout
    class Command
      Plugin::API.command('checkout', self)

      def exec(_name, args)
        if args.any?
          Bundler.require(:default, *args.map!(&:to_sym))
        else
          Bundler.require
        end

        ARGV.clear
        puts "Command exec"
        puts "TODO"
        puts "- [ ] Get args"
        puts "- [ ] Get Gemfile location"
        puts "- [ ] Match Gemfile content"
        puts "- [ ] Runs bundle install or update"
      end

    end
  end
end
