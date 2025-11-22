.class public final Lza/k$c;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lza/k;-><init>(Lp4/g7;Lma/e;Lcb/g;ZLza/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Ljava/util/Set<",
        "+",
        "Llb/f;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lp4/g7;

.field public final synthetic b:Lza/k;


# direct methods
.method public constructor <init>(Lp4/g7;Lza/k;)V
    .locals 0

    iput-object p1, p0, Lza/k$c;->a:Lp4/g7;

    iput-object p2, p0, Lza/k$c;->b:Lza/k;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lza/k$c;->a:Lp4/g7;

    .line 2
    .line 3
    iget-object v1, v0, Lp4/g7;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lya/c;

    .line 6
    .line 7
    iget-object v1, v1, Lya/c;->x:Ltb/d;

    .line 8
    .line 9
    iget-object v2, p0, Lza/k$c;->b:Lza/k;

    .line 10
    .line 11
    iget-object v2, v2, Lza/k;->n:Lma/e;

    .line 12
    .line 13
    invoke-interface {v1, v0, v2}, Ltb/d;->a(Lp4/g7;Lma/e;)Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lm9/t;->y1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method
