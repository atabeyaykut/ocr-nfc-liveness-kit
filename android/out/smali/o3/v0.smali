.class public final Lo3/v0;
.super Lo3/r0;
.source "SourceFile"


# instance fields
.field public final c:Lo3/h$a;


# direct methods
.method public constructor <init>(Lo3/h$a;Lh5/l;)V
    .locals 0

    invoke-direct {p0, p2}, Lo3/r0;-><init>(Lh5/l;)V

    iput-object p1, p0, Lo3/v0;->c:Lo3/h$a;

    return-void
.end method


# virtual methods
.method public final bridge synthetic d(Lo3/q;Z)V
    .locals 0
    .param p1    # Lo3/q;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public final f(Lo3/a0;)Z
    .locals 1

    .line 1
    iget-object p1, p1, Lo3/a0;->f:Ljava/util/HashMap;

    .line 2
    .line 3
    iget-object v0, p0, Lo3/v0;->c:Lo3/h$a;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lo3/m0;

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    return p1

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    throw p1
.end method

.method public final g(Lo3/a0;)[Lm3/d;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object p1, p1, Lo3/a0;->f:Ljava/util/HashMap;

    .line 2
    .line 3
    iget-object v0, p0, Lo3/v0;->c:Lo3/h$a;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lo3/m0;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    throw v0
.end method

.method public final h(Lo3/a0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lo3/a0;->f:Ljava/util/HashMap;

    .line 2
    .line 3
    iget-object v0, p0, Lo3/v0;->c:Lo3/h$a;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lo3/m0;

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lo3/r0;->b:Lh5/l;

    .line 14
    .line 15
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lh5/l;->d(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    throw p1
.end method
