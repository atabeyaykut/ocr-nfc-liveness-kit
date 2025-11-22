.class public final Lp4/n5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt6/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lt6/d<",
        "Lp4/o8;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lp4/n5;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lp4/n5;

    .line 2
    .line 3
    invoke-direct {v0}, Lp4/n5;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lp4/n5;->a:Lp4/n5;

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
    const-class v0, Lp4/n1;

    .line 17
    .line 18
    invoke-static {v0, v1}, Landroidx/room/util/a;->f(Ljava/lang/Class;Lp4/h1;)Ljava/util/HashMap;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Landroidx/fragment/app/a;->g(Ljava/util/HashMap;)V

    .line 23
    .line 24
    .line 25
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

    check-cast p1, Lp4/o8;

    check-cast p2, Lt6/e;

    const/4 p1, 0x0

    throw p1
.end method
