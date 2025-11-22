.class public final Lac/n$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lac/n;-><init>(Lyb/n;Lgb/r;I)V
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
.field public final synthetic a:Lac/n;


# direct methods
.method public constructor <init>(Lac/n;)V
    .locals 0

    iput-object p1, p0, Lac/n$a;->a:Lac/n;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lac/n$a;->a:Lac/n;

    .line 2
    .line 3
    iget-object v1, v0, Lac/n;->l:Lyb/n;

    .line 4
    .line 5
    iget-object v2, v1, Lyb/n;->a:Lyb/l;

    .line 6
    .line 7
    iget-object v2, v2, Lyb/l;->e:Lyb/d;

    .line 8
    .line 9
    iget-object v0, v0, Lac/n;->m:Lgb/r;

    .line 10
    .line 11
    iget-object v1, v1, Lyb/n;->b:Lib/c;

    .line 12
    .line 13
    invoke-interface {v2, v0, v1}, Lyb/g;->j(Lgb/r;Lib/c;)Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lm9/t;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method
