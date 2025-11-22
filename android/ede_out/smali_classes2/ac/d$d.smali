.class public final Lac/d$d;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lac/d;-><init>(Lyb/n;Lgb/b;Lib/c;Lib/a;Lma/r0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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


# direct methods
.method public constructor <init>(Lac/d;)V
    .locals 0

    iput-object p1, p0, Lac/d$d;->a:Lac/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lac/d$d;->a:Lac/d;

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
    invoke-interface {v1, v0}, Lyb/g;->e(Lyb/g0$a;)Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lm9/t;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method
