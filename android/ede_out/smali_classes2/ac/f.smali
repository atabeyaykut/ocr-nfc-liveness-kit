.class public final Lac/f;
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
.field public final synthetic a:Lac/d;

.field public final synthetic b:Lgb/f;


# direct methods
.method public constructor <init>(Lac/d;Lgb/f;)V
    .locals 0

    iput-object p1, p0, Lac/f;->a:Lac/d;

    iput-object p2, p0, Lac/f;->b:Lgb/f;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lac/f;->a:Lac/d;

    .line 2
    .line 3
    iget-object v1, v0, Lac/d;->m:Lyb/n;

    .line 4
    .line 5
    iget-object v1, v1, Lyb/n;->a:Lyb/l;

    .line 6
    .line 7
    iget-object v1, v1, Lyb/l;->e:Lyb/d;

    .line 8
    .line 9
    iget-object v0, v0, Lac/d;->z:Lyb/g0$a;

    .line 10
    .line 11
    iget-object v2, p0, Lac/f;->b:Lgb/f;

    .line 12
    .line 13
    invoke-interface {v1, v0, v2}, Lyb/g;->a(Lyb/g0$a;Lgb/f;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/Iterable;

    .line 18
    .line 19
    invoke-static {v0}, Lm9/t;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method
