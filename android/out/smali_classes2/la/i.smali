.class public final Lla/i;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Lla/k;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lla/g;

.field public final synthetic b:Lbc/l;


# direct methods
.method public constructor <init>(Lla/g;Lbc/c;)V
    .locals 0

    iput-object p1, p0, Lla/i;->a:Lla/g;

    iput-object p2, p0, Lla/i;->b:Lbc/l;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    new-instance v0, Lla/k;

    iget-object v1, p0, Lla/i;->a:Lla/g;

    invoke-virtual {v1}, Lja/k;->l()Lpa/g0;

    move-result-object v2

    const-string v3, "builtInsModule"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lla/h;

    invoke-direct {v3, v1}, Lla/h;-><init>(Lla/g;)V

    iget-object v1, p0, Lla/i;->b:Lbc/l;

    invoke-direct {v0, v2, v1, v3}, Lla/k;-><init>(Lpa/g0;Lbc/l;Lla/h;)V

    return-object v0
.end method
