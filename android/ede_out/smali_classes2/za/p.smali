.class public final Lza/p;
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
.field public final synthetic a:Lza/o;

.field public final synthetic b:Lcb/n;

.field public final synthetic c:Lpa/l0;


# direct methods
.method public constructor <init>(Lza/o;Lcb/n;Lpa/l0;)V
    .locals 0

    iput-object p1, p0, Lza/p;->a:Lza/o;

    iput-object p2, p0, Lza/p;->b:Lcb/n;

    iput-object p3, p0, Lza/p;->c:Lpa/l0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lza/p;->a:Lza/o;

    .line 2
    .line 3
    iget-object v0, v0, Lza/o;->b:Lp4/g7;

    .line 4
    .line 5
    iget-object v0, v0, Lp4/g7;->a:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lya/c;

    .line 8
    .line 9
    iget-object v0, v0, Lya/c;->h:Lwa/g;

    .line 10
    .line 11
    iget-object v1, p0, Lza/p;->b:Lcb/n;

    .line 12
    .line 13
    iget-object v2, p0, Lza/p;->c:Lpa/l0;

    .line 14
    .line 15
    invoke-interface {v0, v1, v2}, Lwa/g;->a(Lcb/n;Lpa/l0;)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    return-object v0
.end method
