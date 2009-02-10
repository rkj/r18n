# encoding: utf-8
=begin
Untranslation string for i18n support.

Copyright (C) 2008 Andrey “A.I.” Sitnik <andrey@sitnik.ru>

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
=end

require 'singleton'

module R18n
  # Return if translation isn’t exists. Unlike nil, it didn’t raise error when
  # you try to access for subtranslations.
  class Untranslated
    include ::Singleton
    
    def nil?
      true
    end
    
    def method_missing(*params)
      self
    end
    
    def [](*params)
      self
    end
  end
end
