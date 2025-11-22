.class public final Lyb/c0;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Lbc/j<",
        "+",
        "Lqb/g<",
        "*>;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lyb/z;

.field public final synthetic b:Lgb/m;

.field public final synthetic c:Lac/k;


# direct methods
.method public constructor <init>(Lyb/z;Lgb/m;Lac/k;)V
    .locals 0

    iput-object p1, p0, Lyb/c0;->a:Lyb/z;

    iput-object p2, p0, Lyb/c0;->b:Lgb/m;

    iput-object p3, p0, Lyb/c0;->c:Lac/k;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lyb/c0;->a:Lyb/z;

    .line 2
    .line 3
    iget-object v1, v0, Lyb/z;->a:Lyb/n;

    .line 4
    .line 5
    iget-object v1, v1, Lyb/n;->a:Lyb/l;

    .line 6
    .line 7
    iget-object v1, v1, Lyb/l;->a:Lbc/l;

    .line 8
    .line 9
    new-instance v2, Lyb/b0;

    .line 10
    .line 11
    iget-object v3, p0, Lyb/c0;->b:Lgb/m;

    .line 12
    .line 13
    iget-object v4, p0, Lyb/c0;->c:Lac/k;

    .line 14
    .line 15
    invoke-direct {v2, v0, v3, v4}, Lyb/b0;-><init>(Lyb/z;Lgb/m;Lac/k;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v1, v2}, Lbc/l;->f(Lx9/a;)Lbc/c$f;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method
