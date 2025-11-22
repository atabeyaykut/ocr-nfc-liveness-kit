.class public final Lp4/p3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt6/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lt6/d<",
        "Lp4/k9;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lp4/p3;

.field public static final b:Lt6/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lp4/p3;

    .line 2
    .line 3
    invoke-direct {v0}, Lp4/p3;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lp4/p3;->a:Lp4/p3;

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
    new-instance v1, Lt6/c;

    .line 23
    .line 24
    invoke-static {v0}, Landroidx/appcompat/graphics/drawable/a;->i(Ljava/util/HashMap;)Ljava/util/Map;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v2, "format"

    .line 29
    .line 30
    invoke-direct {v1, v2, v0}, Lt6/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 31
    .line 32
    .line 33
    sput-object v1, Lp4/p3;->b:Lt6/c;

    .line 34
    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lp4/k9;

    .line 2
    .line 3
    check-cast p2, Lt6/e;

    .line 4
    .line 5
    iget-object p1, p1, Lp4/k9;->a:Lp4/u0;

    .line 6
    .line 7
    sget-object v0, Lp4/p3;->b:Lt6/c;

    .line 8
    .line 9
    invoke-interface {p2, v0, p1}, Lt6/e;->a(Lt6/c;Ljava/lang/Object;)Lt6/e;

    .line 10
    .line 11
    .line 12
    return-void
.end method
