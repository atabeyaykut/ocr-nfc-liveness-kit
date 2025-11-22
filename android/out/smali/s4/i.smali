.class public Ls4/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final a:Ljava/util/Iterator;

.field public final b:Ljava/util/Collection;

.field public final synthetic c:Ls4/j;


# direct methods
.method public constructor <init>(Ls4/j;)V
    .locals 1

    iput-object p1, p0, Ls4/i;->c:Ls4/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Ls4/j;->b:Ljava/util/Collection;

    iput-object p1, p0, Ls4/i;->b:Ljava/util/Collection;

    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Ls4/i;->a:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>(Ls4/j;Ljava/util/ListIterator;)V
    .locals 0

    iput-object p1, p0, Ls4/i;->c:Ls4/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Ls4/j;->b:Ljava/util/Collection;

    iput-object p1, p0, Ls4/i;->b:Ljava/util/Collection;

    iput-object p2, p0, Ls4/i;->a:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    iget-object v0, p0, Ls4/i;->c:Ls4/j;

    invoke-virtual {v0}, Ls4/j;->b()V

    iget-object v0, v0, Ls4/j;->b:Ljava/util/Collection;

    iget-object v1, p0, Ls4/i;->b:Ljava/util/Collection;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .locals 1

    invoke-virtual {p0}, Ls4/i;->a()V

    iget-object v0, p0, Ls4/i;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ls4/i;->a()V

    iget-object v0, p0, Ls4/i;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 3

    .line 1
    iget-object v0, p0, Ls4/i;->a:Ljava/util/Iterator;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ls4/i;->c:Ls4/j;

    .line 7
    .line 8
    iget-object v1, v0, Ls4/j;->e:Ls4/m;

    .line 9
    .line 10
    iget v2, v1, Ls4/m;->d:I

    .line 11
    .line 12
    add-int/lit8 v2, v2, -0x1

    .line 13
    .line 14
    iput v2, v1, Ls4/m;->d:I

    .line 15
    .line 16
    invoke-virtual {v0}, Ls4/j;->l()V

    .line 17
    .line 18
    .line 19
    return-void
.end method
