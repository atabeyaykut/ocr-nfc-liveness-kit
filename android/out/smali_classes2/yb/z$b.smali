.class public final Lyb/z$b;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyb/z;->c(Lgb/m;Z)Lna/h;
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
.field public final synthetic a:Lyb/z;

.field public final synthetic b:Z

.field public final synthetic c:Lgb/m;


# direct methods
.method public constructor <init>(Lyb/z;ZLgb/m;)V
    .locals 0

    iput-object p1, p0, Lyb/z$b;->a:Lyb/z;

    iput-boolean p2, p0, Lyb/z$b;->b:Z

    iput-object p3, p0, Lyb/z$b;->c:Lgb/m;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lyb/z$b;->a:Lyb/z;

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
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iget-object v0, v0, Lyb/z;->a:Lyb/n;

    .line 14
    .line 15
    iget-boolean v2, p0, Lyb/z$b;->b:Z

    .line 16
    .line 17
    iget-object v3, p0, Lyb/z$b;->c:Lgb/m;

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    iget-object v0, v0, Lyb/n;->a:Lyb/l;

    .line 22
    .line 23
    iget-object v0, v0, Lyb/l;->e:Lyb/d;

    .line 24
    .line 25
    invoke-interface {v0, v1, v3}, Lyb/g;->h(Lyb/g0;Lgb/m;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, v0, Lyb/n;->a:Lyb/l;

    .line 31
    .line 32
    iget-object v0, v0, Lyb/l;->e:Lyb/d;

    .line 33
    .line 34
    invoke-interface {v0, v1, v3}, Lyb/g;->k(Lyb/g0;Lgb/m;)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :goto_0
    check-cast v0, Ljava/lang/Iterable;

    .line 39
    .line 40
    invoke-static {v0}, Lm9/t;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const/4 v0, 0x0

    .line 46
    :goto_1
    if-nez v0, :cond_2

    .line 47
    .line 48
    sget-object v0, Lm9/v;->a:Lm9/v;

    .line 49
    .line 50
    :cond_2
    return-object v0
.end method
