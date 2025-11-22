.class public final Lza/q;
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
.field public final synthetic a:Lza/o;

.field public final synthetic b:Lcb/n;

.field public final synthetic c:Lpa/l0;


# direct methods
.method public constructor <init>(Lza/o;Lcb/n;Lxa/f;)V
    .locals 0

    iput-object p1, p0, Lza/q;->a:Lza/o;

    iput-object p2, p0, Lza/q;->b:Lcb/n;

    iput-object p3, p0, Lza/q;->c:Lpa/l0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lza/q;->a:Lza/o;

    .line 2
    .line 3
    iget-object v1, v0, Lza/o;->b:Lp4/g7;

    .line 4
    .line 5
    invoke-virtual {v1}, Lp4/g7;->b()Lbc/l;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Lza/p;

    .line 10
    .line 11
    iget-object v3, p0, Lza/q;->b:Lcb/n;

    .line 12
    .line 13
    iget-object v4, p0, Lza/q;->c:Lpa/l0;

    .line 14
    .line 15
    invoke-direct {v2, v0, v3, v4}, Lza/p;-><init>(Lza/o;Lcb/n;Lpa/l0;)V

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
