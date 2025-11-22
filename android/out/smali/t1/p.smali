.class public final Lt1/p;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lt1/w;",
        "Lt1/w;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/NullPointerException;)V
    .locals 0

    iput-object p1, p0, Lt1/p;->a:Ljava/lang/Throwable;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, Lt1/w;

    .line 2
    .line 3
    const-string v0, "$this$setState"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Lt1/w;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x0

    .line 14
    new-instance v6, Lc2/c;

    .line 15
    .line 16
    iget-object v0, p0, Lt1/p;->a:Ljava/lang/Throwable;

    .line 17
    .line 18
    invoke-direct {v6, v0}, Lc2/c;-><init>(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    const/16 v7, 0x6f

    .line 22
    .line 23
    move-object v1, p1

    .line 24
    invoke-direct/range {v1 .. v7}, Lt1/w;-><init>(Ljava/util/List;Ljava/util/List;Lc2/c;ZLc2/c;I)V

    .line 25
    .line 26
    .line 27
    return-object p1
.end method
