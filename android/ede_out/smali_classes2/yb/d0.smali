.class public final Lyb/d0;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Lqb/g<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lyb/z;

.field public final synthetic b:Lgb/m;

.field public final synthetic c:Lac/k;


# direct methods
.method public constructor <init>(Lyb/z;Lgb/m;Lac/k;)V
    .locals 0

    iput-object p1, p0, Lyb/d0;->a:Lyb/z;

    iput-object p2, p0, Lyb/d0;->b:Lgb/m;

    iput-object p3, p0, Lyb/d0;->c:Lac/k;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lyb/d0;->a:Lyb/z;

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
    invoke-static {v1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, v0, Lyb/z;->a:Lyb/n;

    .line 15
    .line 16
    iget-object v0, v0, Lyb/n;->a:Lyb/l;

    .line 17
    .line 18
    iget-object v0, v0, Lyb/l;->e:Lyb/d;

    .line 19
    .line 20
    iget-object v2, p0, Lyb/d0;->c:Lac/k;

    .line 21
    .line 22
    invoke-virtual {v2}, Lpa/l0;->getReturnType()Lcc/e0;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const-string v3, "property.returnType"

    .line 27
    .line 28
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v3, p0, Lyb/d0;->b:Lgb/m;

    .line 32
    .line 33
    invoke-interface {v0, v1, v3, v2}, Lyb/d;->d(Lyb/g0;Lgb/m;Lcc/e0;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lqb/g;

    .line 38
    .line 39
    return-object v0
.end method
