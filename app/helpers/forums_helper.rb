module ForumsHelper
  def breadcrumbs
    parent_chain_links = @forum.parent_chain.reverse.map do |f|
      link_to f.name.downcase, f
    end
    forums_index_link = link_to '.dsy:it. forums', forums_path
    breadcrumbs = parent_chain_links.prepend(forums_index_link).push(@forum.name.downcase).join(' > ')
    sanitize breadcrumbs
  end
end
