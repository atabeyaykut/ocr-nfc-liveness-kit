.class public final Lp4/r5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt6/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lt6/d<",
        "Lp4/s8;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lp4/r5;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lp4/r5;

    .line 2
    .line 3
    invoke-direct {v0}, Lp4/r5;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lp4/r5;->a:Lp4/r5;

    .line 7
    .line 8
    sget-object v0, Lp4/l1;->a:Lp4/l1;

    .line 9
    .line 10
    new-instance v1, Lp4/h1;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-direct {v1, v2, v0}, Lp4/h1;-><init>(ILp4/l1;)V

    .line 14
    .line 15
    .line 16
    const-class v2, Lp4/n1;

    .line 17
    .line 18
    invoke-static {v2, v1}, Landroidx/room/util/a;->f(Ljava/lang/Class;Lp4/h1;)Ljava/util/HashMap;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const/4 v3, 0x2

    .line 23
    invoke-static {v1, v3, v0}, Landroid/support/v4/media/a;->m(Ljava/util/HashMap;ILp4/l1;)Lp4/h1;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v2, v1}, Landroidx/room/util/a;->f(Ljava/lang/Class;Lp4/h1;)Ljava/util/HashMap;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const/4 v3, 0x3

    .line 32
    invoke-static {v1, v3, v0}, Landroid/support/v4/media/a;->m(Ljava/util/HashMap;ILp4/l1;)Lp4/h1;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v2, v1}, Landroidx/room/util/a;->f(Ljava/lang/Class;Lp4/h1;)Ljava/util/HashMap;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const/4 v3, 0x4

    .line 41
    invoke-static {v1, v3, v0}, Landroid/support/v4/media/a;->m(Ljava/util/HashMap;ILp4/l1;)Lp4/h1;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v2, v0}, Landroidx/room/util/a;->f(Ljava/lang/Class;Lp4/h1;)Ljava/util/HashMap;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {v0}, Landroidx/fragment/app/a;->g(Ljava/util/HashMap;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lp4/s8;

    check-cast p2, Lt6/e;

    const/4 p1, 0x0

    throw p1
.end method
