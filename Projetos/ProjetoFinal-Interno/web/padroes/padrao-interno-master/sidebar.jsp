<%@page import="br.com.projetofinal.dao.TicketDAO"%>
<%@page import="br.com.projetofinal.Util.NumberFormato"%>
<div class="site-menubar">
    <div class="site-menubar-body">
        <ul class="site-menu" data-plugin="menu">
            <li class="site-menu-category">Interno</li>
            <li class="site-menu-item has-sub">
                <a href="javascript:void(0)">
                    <i class="site-menu-icon wb-time" aria-hidden="true"></i>
                    <span class="site-menu-title">Atendimento</span>
                    <% if (new TicketDAO().getQuantidadeTicketsPendentes() > 1) {%>
                    <div class="site-menu-badge">
                        <span class="badge badge-pill badge-danger"><%= new NumberFormato().f(new TicketDAO().getQuantidadeTicketsPendentes())%></span>
                    </div>
                    <% } else { %>
                    <span class="site-menu-arrow"></span>
                    <% }%>
                </a>
                <ul class="site-menu-sub">
                    <li class="site-menu-item">
                        <a class="animsition-link" href="../index.jsp">
                            <span class="site-menu-title">Fila de atendimento</span>
                        </a>
                    </li>
                    <li class="site-menu-item">
                        <a class="animsition-link" href="/interno/tickets/pesquisar">
                            <span class="site-menu-title">Pesquisar Ticket</span>
                        </a>
                    </li>
                </ul>
            </li>
            <li class="site-menu-item has-sub">
                <a href="javascript:void(0)">
                    <i class="site-menu-icon wb-briefcase" aria-hidden="true"></i>
                    <span class="site-menu-title">Empresas</span>
                    <span class="site-menu-arrow"></span>
                </a>
                <ul class="site-menu-sub">
                    <li class="site-menu-item">
                        <a class="animsition-link" href="/interno/empresa/cadastro">
                            <span class="site-menu-title">Cadastrar</span>
                        </a>
                    </li>
                    <li class="site-menu-item">
                        <a class="animsition-link" href="/interno/empresas">
                            <span class="site-menu-title">Consultar</span>
                        </a>
                    </li>
                </ul>
            </li>
            <li class="site-menu-item has-sub">
                <a href="javascript:void(0)">
                    <i class="site-menu-icon wb-users" aria-hidden="true"></i>
                    <span class="site-menu-title">Colaboradores</span>
                    <span class="site-menu-arrow"></span>
                </a>
                <ul class="site-menu-sub">
                    <li class="site-menu-item has-sub">
                        <a class="animsition-link" href="/interno/cadastro">
                            <span class="site-menu-title">Cadastrar</span>
                        </a>       
                    </li>
                    <li class="site-menu-item has-sub">
                        <a class="animsition-link" href="/interno/colaboradores">
                            <span class="site-menu-title">Consultar</span>
                        </a>       
                    </li>
                </ul>
            </li>
            <li class="site-menu-item has-sub">
                <a href="javascript:void(0)">
                    <i class="site-menu-icon wb-hammer" aria-hidden="true"></i>
                    <span class="site-menu-title">Funções</span>
                    <span class="site-menu-arrow"></span>
                </a>
                <ul class="site-menu-sub">
                    <li class="site-menu-item has-sub">
                        <a class="animsition-link" href="/interno/funcoes/cadastro">
                            <span class="site-menu-title">Adicionar nova Função</span>
                        </a>       
                    </li>
                    <li class="site-menu-item has-sub">
                        <a class="animsition-link" href="/interno/funcoes">
                            <span class="site-menu-title">Consultar Funções</span>
                        </a>       
                    </li>
                </ul>
            </li>
            <li class="site-menu-item has-sub">
                <a href="javascript:void(0)">
                    <i class="site-menu-icon wb-tag" aria-hidden="true"></i>
                    <span class="site-menu-title">Tags</span>
                    <span class="site-menu-arrow"></span>
                </a>
                <ul class="site-menu-sub">
                    <li class="site-menu-item has-sub">
                        <a class="animsition-link" href="/interno/tag/cadastro">
                            <span class="site-menu-title">Adicionar nova Tag</span>
                        </a>       
                    </li>
                    <li class="site-menu-item has-sub">
                        <a class="animsition-link" href="/interno/tags">
                            <span class="site-menu-title">Consultar Tags</span>
                        </a>       
                    </li>
                </ul>
            </li>
            <li class="site-menu-item has-sub">
                <a href="javascript:void(0)">
                    <i class="site-menu-icon wb-clipboard" aria-hidden="true"></i>
                    <span class="site-menu-title">Relatórios</span>
                    <span class="site-menu-arrow"></span>
                </a>
                <ul class="site-menu-sub">
                    <li class="site-menu-item has-sub">
                        <a href="javascript:void(0)">
                            <span class="site-menu-title">Exemplo Relatório</span>
                        </a>       
                    </li>
                </ul>
            </li>
        </ul>
    </div>
</div> 