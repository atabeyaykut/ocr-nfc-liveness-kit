.class public final Lza/k$e;
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
.field public final synthetic a:Lza/k;


# direct methods
.method public constructor <init>(Lza/k;)V
    .locals 0

    iput-object p1, p0, Lza/k$e;->a:Lza/k;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lza/k$e;->a:Lza/k;

    .line 2
    .line 3
    iget-object v0, v0, Lza/k;->o:Lcb/g;

    .line 4
    .line 5
    invoke-interface {v0}, Lcb/g;->I()Ljava/util/Collection;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Iterable;

    .line 10
    .line 11
    invoke-static {v0}, Lm9/t;->y1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method
