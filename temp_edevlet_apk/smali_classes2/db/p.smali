.class public final Ldb/p;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lma/b;",
        "Lcc/e0;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ldb/p;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldb/p;

    invoke-direct {v0}, Ldb/p;-><init>()V

    sput-object v0, Ldb/p;->a:Ldb/p;

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
    check-cast p1, Lma/b;

    .line 2
    .line 3
    const-string v0, "it"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Lma/a;->h0()Lma/o0;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Lma/z0;->getType()Lcc/e0;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "it.extensionReceiverParameter!!.type"

    .line 20
    .line 21
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-object p1
.end method
