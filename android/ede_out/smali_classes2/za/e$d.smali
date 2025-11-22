.class public final Lza/e$d;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lza/e;-><init>(Lp4/g7;Lma/j;Lcb/g;Lma/e;)V
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
        "Lcb/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lza/e;


# direct methods
.method public constructor <init>(Lza/e;)V
    .locals 0

    iput-object p1, p0, Lza/e$d;->a:Lza/e;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lza/e$d;->a:Lza/e;

    .line 2
    .line 3
    invoke-static {v0}, Lsb/b;->f(Lma/g;)Llb/b;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lza/e;->h:Lp4/g7;

    .line 10
    .line 11
    iget-object v0, v0, Lp4/g7;->a:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lya/c;

    .line 14
    .line 15
    iget-object v0, v0, Lya/c;->w:Lva/p;

    .line 16
    .line 17
    invoke-interface {v0, v1}, Lva/p;->b(Llb/b;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return-object v0
.end method
