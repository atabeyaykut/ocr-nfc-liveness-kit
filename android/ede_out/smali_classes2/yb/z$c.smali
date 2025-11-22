.class public final Lyb/z$c;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyb/z;->h(Ljava/util/List;Lmb/p;Lyb/c;)Ljava/util/List;
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

.field public final synthetic b:Lyb/g0;

.field public final synthetic c:Lmb/p;

.field public final synthetic d:Lyb/c;

.field public final synthetic e:I

.field public final synthetic f:Lgb/t;


# direct methods
.method public constructor <init>(Lyb/z;Lyb/g0;Lmb/p;Lyb/c;ILgb/t;)V
    .locals 0

    iput-object p1, p0, Lyb/z$c;->a:Lyb/z;

    iput-object p2, p0, Lyb/z$c;->b:Lyb/g0;

    iput-object p3, p0, Lyb/z$c;->c:Lmb/p;

    iput-object p4, p0, Lyb/z$c;->d:Lyb/c;

    iput p5, p0, Lyb/z$c;->e:I

    iput-object p6, p0, Lyb/z$c;->f:Lgb/t;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lyb/z$c;->a:Lyb/z;

    .line 2
    .line 3
    iget-object v0, v0, Lyb/z;->a:Lyb/n;

    .line 4
    .line 5
    iget-object v0, v0, Lyb/n;->a:Lyb/l;

    .line 6
    .line 7
    iget-object v1, v0, Lyb/l;->e:Lyb/d;

    .line 8
    .line 9
    iget-object v2, p0, Lyb/z$c;->b:Lyb/g0;

    .line 10
    .line 11
    iget-object v3, p0, Lyb/z$c;->c:Lmb/p;

    .line 12
    .line 13
    iget-object v4, p0, Lyb/z$c;->d:Lyb/c;

    .line 14
    .line 15
    iget v5, p0, Lyb/z$c;->e:I

    .line 16
    .line 17
    iget-object v6, p0, Lyb/z$c;->f:Lgb/t;

    .line 18
    .line 19
    invoke-interface/range {v1 .. v6}, Lyb/g;->c(Lyb/g0;Lmb/p;Lyb/c;ILgb/t;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/Iterable;

    .line 24
    .line 25
    invoke-static {v0}, Lm9/t;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method
