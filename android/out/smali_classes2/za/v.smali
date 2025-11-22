.class public final Lza/v;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lcc/e0;",
        "Lma/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lza/v;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lza/v;

    invoke-direct {v0}, Lza/v;-><init>()V

    sput-object v0, Lza/v;->a:Lza/v;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcc/e0;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcc/e0;->M0()Lcc/c1;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1}, Lcc/c1;->n()Lma/g;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    instance-of v0, p1, Lma/e;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    check-cast p1, Lma/e;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    return-object p1
.end method
