.class public final Lyb/a0;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Ljava/util/List<",
        "+",
        "Lna/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lyb/z;

.field public final synthetic b:Lmb/p;

.field public final synthetic c:Lyb/c;


# direct methods
.method public constructor <init>(Lyb/z;Lmb/p;Lyb/c;)V
    .locals 0

    iput-object p1, p0, Lyb/a0;->a:Lyb/z;

    iput-object p2, p0, Lyb/a0;->b:Lmb/p;

    iput-object p3, p0, Lyb/a0;->c:Lyb/c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lyb/a0;->a:Lyb/z;

    .line 2
    .line 3
    iget-object v1, v0, Lyb/z;->a:Lyb/n;

    .line 4
    .line 5
    iget-object v1, v1, Lyb/n;->c:Lma/j;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lyb/z;->a(Lma/j;)Lyb/g0;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v0, v0, Lyb/z;->a:Lyb/n;

    .line 14
    .line 15
    iget-object v0, v0, Lyb/n;->a:Lyb/l;

    .line 16
    .line 17
    iget-object v0, v0, Lyb/l;->e:Lyb/d;

    .line 18
    .line 19
    iget-object v2, p0, Lyb/a0;->b:Lmb/p;

    .line 20
    .line 21
    iget-object v3, p0, Lyb/a0;->c:Lyb/c;

    .line 22
    .line 23
    invoke-interface {v0, v1, v2, v3}, Lyb/g;->f(Lyb/g0;Lmb/p;Lyb/c;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    if-nez v0, :cond_1

    .line 30
    .line 31
    sget-object v0, Lm9/v;->a:Lm9/v;

    .line 32
    .line 33
    :cond_1
    return-object v0
.end method
