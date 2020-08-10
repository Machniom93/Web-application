<!-- Content Row -->
<div class="row">
    <!-- User data -->
    <div class="card shadow mb-4" style="width: 100%">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Dodaj użytkownika</h6>
        </div>
        <div class="card-body" style="width: 100%">
            <form action="/users/add" method="post">
                <label>
                    Nazwa <br/>
                    <input type="text" name="userName" placeholder="Nazwa użytkownika" required>
                </label>
                <br/>
                <label>
                    Email <br>
                    <input type="email" name="email" placeholder="Email użytkownika" required>
                </label>
                <br/>
                <label>
                    Hasło <br/>
                    <input type="password" name="password" placeholder="Hasło użytkownika" required>
                </label>
                <br/>
                <button class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm" type="submit">Zapisz</button>
            </form>
        </div>
    </div>
</div>
</div>
<!-- /.container-fluid -->
<%@ include file="/WEB-INF/footer.jspf" %>
