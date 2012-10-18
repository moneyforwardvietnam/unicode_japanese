# -*- encoding : utf-8 -*-
require 'test/unit'
require File.expand_path('../init', File.dirname(__FILE__))

class UnicodeJapaneseTest < Test::Unit::TestCase

  ######################################################################
  ### Basic

  def test_accept_nil
    assert_nothing_raised do
      Unicode::Japanese.z2h(nil)
    end
  end

  def test_dup
    assert_equal "ｱ", Unicode::Japanese.z2h("ア")
  end

  ######################################################################
  ### Convertions

  def test_z2h
    assert_equal "ｽｽﾞｷ ｱｲﾘ", Unicode::Japanese.z2h("スズキ　アイリ")
  end

  def test_h2z
    assert_equal "スズキ　アイリ", Unicode::Japanese.h2z("ｽｽﾞｷ ｱｲﾘ")
  end

end
