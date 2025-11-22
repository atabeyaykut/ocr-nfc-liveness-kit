.class public final Lla/n;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Lcc/e0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lla/k;


# direct methods
.method public constructor <init>(Lla/k;)V
    .locals 0

    iput-object p1, p0, Lla/n;->a:Lla/k;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lla/n;->a:Lla/k;

    .line 2
    .line 3
    iget-object v0, v0, Lla/k;->a:Lma/b0;

    .line 4
    .line 5
    invoke-interface {v0}, Lma/b0;->m()Lja/k;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lja/k;->f()Lcc/m0;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "moduleDescriptor.builtIns.anyType"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method
