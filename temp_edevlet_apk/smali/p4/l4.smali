.class public final Lp4/l4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt6/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lt6/d<",
        "Lp4/e7;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lp4/l4;

.field public static final b:Lt6/c;

.field public static final c:Lt6/c;

.field public static final d:Lt6/c;

.field public static final e:Lt6/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lp4/l4;

    .line 2
    .line 3
    invoke-direct {v0}, Lp4/l4;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lp4/l4;->a:Lp4/l4;

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
    new-instance v3, Lt6/c;

    .line 23
    .line 24
    invoke-static {v1}, Landroidx/appcompat/graphics/drawable/a;->i(Ljava/util/HashMap;)Ljava/util/Map;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v4, "imageFormat"

    .line 29
    .line 30
    invoke-direct {v3, v4, v1}, Lt6/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 31
    .line 32
    .line 33
    sput-object v3, Lp4/l4;->b:Lt6/c;

    .line 34
    .line 35
    new-instance v1, Lp4/h1;

    .line 36
    .line 37
    const/4 v3, 0x2

    .line 38
    invoke-direct {v1, v3, v0}, Lp4/h1;-><init>(ILp4/l1;)V

    .line 39
    .line 40
    .line 41
    invoke-static {v2, v1}, Landroidx/room/util/a;->f(Ljava/lang/Class;Lp4/h1;)Ljava/util/HashMap;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    new-instance v3, Lt6/c;

    .line 46
    .line 47
    invoke-static {v1}, Landroidx/appcompat/graphics/drawable/a;->i(Ljava/util/HashMap;)Ljava/util/Map;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const-string v4, "originalImageSize"

    .line 52
    .line 53
    invoke-direct {v3, v4, v1}, Lt6/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 54
    .line 55
    .line 56
    sput-object v3, Lp4/l4;->c:Lt6/c;

    .line 57
    .line 58
    new-instance v1, Lp4/h1;

    .line 59
    .line 60
    const/4 v3, 0x3

    .line 61
    invoke-direct {v1, v3, v0}, Lp4/h1;-><init>(ILp4/l1;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v2, v1}, Landroidx/room/util/a;->f(Ljava/lang/Class;Lp4/h1;)Ljava/util/HashMap;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    new-instance v3, Lt6/c;

    .line 69
    .line 70
    invoke-static {v1}, Landroidx/appcompat/graphics/drawable/a;->i(Ljava/util/HashMap;)Ljava/util/Map;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    const-string v4, "compressedImageSize"

    .line 75
    .line 76
    invoke-direct {v3, v4, v1}, Lt6/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 77
    .line 78
    .line 79
    sput-object v3, Lp4/l4;->d:Lt6/c;

    .line 80
    .line 81
    new-instance v1, Lp4/h1;

    .line 82
    .line 83
    const/4 v3, 0x4

    .line 84
    invoke-direct {v1, v3, v0}, Lp4/h1;-><init>(ILp4/l1;)V

    .line 85
    .line 86
    .line 87
    invoke-static {v2, v1}, Landroidx/room/util/a;->f(Ljava/lang/Class;Lp4/h1;)Ljava/util/HashMap;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    new-instance v1, Lt6/c;

    .line 92
    .line 93
    invoke-static {v0}, Landroidx/appcompat/graphics/drawable/a;->i(Ljava/util/HashMap;)Ljava/util/Map;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    const-string v2, "isOdmlImage"

    .line 98
    .line 99
    invoke-direct {v1, v2, v0}, Lt6/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 100
    .line 101
    .line 102
    sput-object v1, Lp4/l4;->e:Lt6/c;

    .line 103
    .line 104
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lp4/e7;

    .line 2
    .line 3
    check-cast p2, Lt6/e;

    .line 4
    .line 5
    iget-object v0, p1, Lp4/e7;->a:Lp4/d7;

    .line 6
    .line 7
    sget-object v1, Lp4/l4;->b:Lt6/c;

    .line 8
    .line 9
    invoke-interface {p2, v1, v0}, Lt6/e;->a(Lt6/c;Ljava/lang/Object;)Lt6/e;

    .line 10
    .line 11
    .line 12
    sget-object v0, Lp4/l4;->c:Lt6/c;

    .line 13
    .line 14
    iget-object p1, p1, Lp4/e7;->b:Ljava/lang/Integer;

    .line 15
    .line 16
    invoke-interface {p2, v0, p1}, Lt6/e;->a(Lt6/c;Ljava/lang/Object;)Lt6/e;

    .line 17
    .line 18
    .line 19
    sget-object p1, Lp4/l4;->d:Lt6/c;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-interface {p2, p1, v0}, Lt6/e;->a(Lt6/c;Ljava/lang/Object;)Lt6/e;

    .line 23
    .line 24
    .line 25
    sget-object p1, Lp4/l4;->e:Lt6/c;

    .line 26
    .line 27
    invoke-interface {p2, p1, v0}, Lt6/e;->a(Lt6/c;Ljava/lang/Object;)Lt6/e;

    .line 28
    .line 29
    .line 30
    return-void
.end method
