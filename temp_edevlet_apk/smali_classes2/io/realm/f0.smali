.class public final Lio/realm/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/f0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lio/realm/s0;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lio/realm/s0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:Lio/realm/internal/p;

.field public d:Lio/realm/internal/OsObject;

.field public e:Lio/realm/a;

.field public f:Z

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lio/realm/internal/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/internal/k<",
            "Lio/realm/internal/OsObject$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/realm/s0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/realm/f0;->b:Z

    new-instance v0, Lio/realm/internal/k;

    invoke-direct {v0}, Lio/realm/internal/k;-><init>()V

    iput-object v0, p0, Lio/realm/f0;->h:Lio/realm/internal/k;

    iput-object p1, p0, Lio/realm/f0;->a:Lio/realm/s0;

    return-void
.end method


# virtual methods
.method public final a(Lio/realm/s0;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lio/realm/v0;->isValid(Lio/realm/s0;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-static {p1}, Lio/realm/v0;->isManaged(Lio/realm/s0;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    check-cast p1, Lio/realm/internal/n;

    .line 14
    .line 15
    invoke-interface {p1}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object p1, p1, Lio/realm/f0;->e:Lio/realm/a;

    .line 20
    .line 21
    iget-object v0, p0, Lio/realm/f0;->e:Lio/realm/a;

    .line 22
    .line 23
    if-ne p1, v0, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    const-string v0, "\'value\' belongs to a different Realm."

    .line 29
    .line 30
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1

    .line 34
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 35
    .line 36
    const-string v0, "\'value\' is not a valid managed object."

    .line 37
    .line 38
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lio/realm/f0;->e:Lio/realm/a;

    iget-object v0, v0, Lio/realm/a;->e:Lio/realm/internal/OsSharedRealm;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/realm/f0;->c:Lio/realm/internal/p;

    invoke-interface {v0}, Lio/realm/internal/p;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/realm/f0;->d:Lio/realm/internal/OsObject;

    if-nez v0, :cond_1

    new-instance v0, Lio/realm/internal/OsObject;

    iget-object v1, p0, Lio/realm/f0;->e:Lio/realm/a;

    iget-object v1, v1, Lio/realm/a;->e:Lio/realm/internal/OsSharedRealm;

    iget-object v2, p0, Lio/realm/f0;->c:Lio/realm/internal/p;

    check-cast v2, Lio/realm/internal/UncheckedRow;

    invoke-direct {v0, v1, v2}, Lio/realm/internal/OsObject;-><init>(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/UncheckedRow;)V

    iput-object v0, p0, Lio/realm/f0;->d:Lio/realm/internal/OsObject;

    iget-object v1, p0, Lio/realm/f0;->h:Lio/realm/internal/k;

    invoke-virtual {v0, v1}, Lio/realm/internal/OsObject;->setObserverPairs(Lio/realm/internal/k;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/realm/f0;->h:Lio/realm/internal/k;

    :cond_1
    :goto_0
    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/f0;->b:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lio/realm/f0;->g:Ljava/util/List;

    return-void
.end method
