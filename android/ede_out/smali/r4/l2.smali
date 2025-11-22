.class public final Lr4/l2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt6/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lt6/d<",
        "Lr4/d5;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lr4/l2;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lr4/l2;

    .line 2
    .line 3
    invoke-direct {v0}, Lr4/l2;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lr4/l2;->a:Lr4/l2;

    .line 7
    .line 8
    sget-object v0, Lr4/d7;->a:Lr4/d7;

    .line 9
    .line 10
    new-instance v1, Lr4/a7;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-direct {v1, v2, v0}, Lr4/a7;-><init>(ILr4/d7;)V

    .line 14
    .line 15
    .line 16
    const-class v2, Lr4/e7;

    .line 17
    .line 18
    invoke-static {v2, v1}, Landroidx/constraintlayout/core/a;->g(Ljava/lang/Class;Lr4/a7;)Ljava/util/HashMap;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const/4 v3, 0x2

    .line 23
    invoke-static {v1, v3, v0}, Landroidx/appcompat/widget/v;->f(Ljava/util/HashMap;ILr4/d7;)Lr4/a7;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v2, v0}, Landroidx/constraintlayout/core/a;->g(Ljava/lang/Class;Lr4/a7;)Ljava/util/HashMap;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Landroidx/fragment/app/a;->g(Ljava/util/HashMap;)V

    .line 32
    .line 33
    .line 34
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

    check-cast p1, Lr4/d5;

    check-cast p2, Lt6/e;

    const/4 p1, 0x0

    throw p1
.end method
