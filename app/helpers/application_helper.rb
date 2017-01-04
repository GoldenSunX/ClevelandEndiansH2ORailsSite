module ApplicationHelper

  # Created (Cole Albers, 11/27/16): Created to help display titles for all pages.
  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = 'H2O Contact Manager'
    if page_title.empty?
      base_title
    else
      page_title + ' | ' + base_title
    end
  end
end
