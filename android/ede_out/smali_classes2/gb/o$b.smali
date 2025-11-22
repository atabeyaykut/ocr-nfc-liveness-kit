.class public final Lgb/o$b;
.super Lmb/h$a;
.source "SourceFile"

# interfaces
.implements Lmb/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgb/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmb/h$a<",
        "Lgb/o;",
        "Lgb/o$b;",
        ">;",
        "Lmb/q;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:Lmb/n;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmb/h$a;-><init>()V

    sget-object v0, Lmb/m;->b:Lmb/v;

    iput-object v0, p0, Lgb/o$b;->c:Lmb/n;

    return-void
.end method


# virtual methods
.method public final bridge synthetic E(Lmb/d;Lmb/f;)Lmb/p$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lgb/o$b;->n(Lmb/d;Lmb/f;)V

    return-object p0
.end method

.method public final build()Lmb/p;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lgb/o$b;->k()Lgb/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lgb/o;->b()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    new-instance v0, Lc0/a;

    .line 13
    .line 14
    invoke-direct {v0}, Lc0/a;-><init>()V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    new-instance v0, Lgb/o$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lgb/o$b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lgb/o$b;->k()Lgb/o;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lgb/o$b;->l(Lgb/o;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final bridge synthetic h(Lmb/d;Lmb/f;)Lmb/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lgb/o$b;->n(Lmb/d;Lmb/f;)V

    return-object p0
.end method

.method public final i()Lmb/h$a;
    .locals 2

    .line 1
    new-instance v0, Lgb/o$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lgb/o$b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lgb/o$b;->k()Lgb/o;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lgb/o$b;->l(Lgb/o;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final bridge synthetic j(Lmb/h;)Lmb/h$a;
    .locals 0

    check-cast p1, Lgb/o;

    invoke-virtual {p0, p1}, Lgb/o$b;->l(Lgb/o;)V

    return-object p0
.end method

.method public final k()Lgb/o;
    .locals 3

    .line 1
    new-instance v0, Lgb/o;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lgb/o;-><init>(Lmb/h$a;)V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lgb/o$b;->b:I

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    and-int/2addr v1, v2

    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lgb/o$b;->c:Lmb/n;

    .line 13
    .line 14
    invoke-interface {v1}, Lmb/n;->p()Lmb/v;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iput-object v1, p0, Lgb/o$b;->c:Lmb/n;

    .line 19
    .line 20
    iget v1, p0, Lgb/o$b;->b:I

    .line 21
    .line 22
    and-int/lit8 v1, v1, -0x2

    .line 23
    .line 24
    iput v1, p0, Lgb/o$b;->b:I

    .line 25
    .line 26
    :cond_0
    iget-object v1, p0, Lgb/o$b;->c:Lmb/n;

    .line 27
    .line 28
    iput-object v1, v0, Lgb/o;->b:Lmb/n;

    .line 29
    .line 30
    return-object v0
.end method

.method public final l(Lgb/o;)V
    .locals 3

    .line 1
    sget-object v0, Lgb/o;->e:Lgb/o;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p1, Lgb/o;->b:Lmb/n;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_3

    .line 13
    .line 14
    iget-object v0, p0, Lgb/o$b;->c:Lmb/n;

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p1, Lgb/o;->b:Lmb/n;

    .line 23
    .line 24
    iput-object v0, p0, Lgb/o$b;->c:Lmb/n;

    .line 25
    .line 26
    iget v0, p0, Lgb/o$b;->b:I

    .line 27
    .line 28
    and-int/lit8 v0, v0, -0x2

    .line 29
    .line 30
    iput v0, p0, Lgb/o$b;->b:I

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget v0, p0, Lgb/o$b;->b:I

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    and-int/2addr v0, v1

    .line 37
    if-eq v0, v1, :cond_2

    .line 38
    .line 39
    new-instance v0, Lmb/m;

    .line 40
    .line 41
    iget-object v2, p0, Lgb/o$b;->c:Lmb/n;

    .line 42
    .line 43
    invoke-direct {v0, v2}, Lmb/m;-><init>(Lmb/n;)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lgb/o$b;->c:Lmb/n;

    .line 47
    .line 48
    iget v0, p0, Lgb/o$b;->b:I

    .line 49
    .line 50
    or-int/2addr v0, v1

    .line 51
    iput v0, p0, Lgb/o$b;->b:I

    .line 52
    .line 53
    :cond_2
    iget-object v0, p0, Lgb/o$b;->c:Lmb/n;

    .line 54
    .line 55
    iget-object v1, p1, Lgb/o;->b:Lmb/n;

    .line 56
    .line 57
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 58
    .line 59
    .line 60
    :cond_3
    :goto_0
    iget-object v0, p0, Lmb/h$a;->a:Lmb/c;

    .line 61
    .line 62
    iget-object p1, p1, Lgb/o;->a:Lmb/c;

    .line 63
    .line 64
    invoke-virtual {v0, p1}, Lmb/c;->l(Lmb/c;)Lmb/c;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iput-object p1, p0, Lmb/h$a;->a:Lmb/c;

    .line 69
    .line 70
    return-void
.end method

.method public final n(Lmb/d;Lmb/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    sget-object p2, Lgb/o;->f:Lgb/o$a;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance p2, Lgb/o;

    .line 7
    .line 8
    invoke-direct {p2, p1}, Lgb/o;-><init>(Lmb/d;)V
    :try_end_0
    .catch Lmb/j; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p2}, Lgb/o$b;->l(Lgb/o;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    move-exception p1

    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_1

    .line 19
    :goto_0
    :try_start_1
    iget-object p2, p1, Lmb/j;->a:Lmb/p;

    .line 20
    .line 21
    check-cast p2, Lgb/o;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    .line 23
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 24
    :catchall_1
    move-exception p1

    .line 25
    goto :goto_2

    .line 26
    :goto_1
    const/4 p2, 0x0

    .line 27
    :goto_2
    if-eqz p2, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0, p2}, Lgb/o$b;->l(Lgb/o;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    throw p1
.end method
