.class public final La5/b;
.super La5/c;
.source "SourceFile"


# instance fields
.field public final a:Lc5/w5;


# direct methods
.method public constructor <init>(Lc5/w5;)V
    .locals 0

    invoke-direct {p0}, La5/c;-><init>()V

    iput-object p1, p0, La5/b;->a:Lc5/w5;

    return-void
.end method


# virtual methods
.method public final b()J
    .locals 2

    iget-object v0, p0, La5/b;->a:Lc5/w5;

    invoke-interface {v0}, Lc5/w5;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La5/b;->a:Lc5/w5;

    invoke-interface {v0}, Lc5/w5;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La5/b;->a:Lc5/w5;

    invoke-interface {v0}, Lc5/w5;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La5/b;->a:Lc5/w5;

    invoke-interface {v0}, Lc5/w5;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La5/b;->a:Lc5/w5;

    invoke-interface {v0}, Lc5/w5;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final n(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, La5/b;->a:Lc5/w5;

    invoke-interface {v0, p1, p2}, Lc5/w5;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final o(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, La5/b;->a:Lc5/w5;

    invoke-interface {v0, p1, p2, p3}, Lc5/w5;->o(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final p(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, La5/b;->a:Lc5/w5;

    invoke-interface {v0, p1}, Lc5/w5;->p(Landroid/os/Bundle;)V

    return-void
.end method

.method public final q(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, La5/b;->a:Lc5/w5;

    invoke-interface {v0, p1, p2, p3}, Lc5/w5;->q(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final r(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, La5/b;->a:Lc5/w5;

    invoke-interface {v0, p1}, Lc5/w5;->r(Ljava/lang/String;)V

    return-void
.end method

.method public final s(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, La5/b;->a:Lc5/w5;

    invoke-interface {v0, p1, p2, p3}, Lc5/w5;->s(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final t(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, La5/b;->a:Lc5/w5;

    invoke-interface {v0, p1}, Lc5/w5;->t(Ljava/lang/String;)V

    return-void
.end method

.method public final u(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, La5/b;->a:Lc5/w5;

    invoke-interface {v0, p1}, Lc5/w5;->u(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
