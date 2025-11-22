.class public final Lu2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt6/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lt6/d<",
        "Ly2/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lu2/c;

.field public static final b:Lt6/c;

.field public static final c:Lt6/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lu2/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lu2/c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lu2/c;->a:Lu2/c;

    .line 7
    .line 8
    new-instance v0, Lw6/a;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {v0, v1}, Lw6/a;-><init>(I)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    const-class v2, Lw6/d;

    .line 20
    .line 21
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    new-instance v0, Lt6/c;

    .line 25
    .line 26
    invoke-static {v1}, Landroidx/appcompat/graphics/drawable/a;->i(Ljava/util/HashMap;)Ljava/util/Map;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v3, "eventsDroppedCount"

    .line 31
    .line 32
    invoke-direct {v0, v3, v1}, Lt6/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lu2/c;->b:Lt6/c;

    .line 36
    .line 37
    new-instance v0, Lw6/a;

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    invoke-direct {v0, v1}, Lw6/a;-><init>(I)V

    .line 41
    .line 42
    .line 43
    new-instance v1, Ljava/util/HashMap;

    .line 44
    .line 45
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    new-instance v0, Lt6/c;

    .line 52
    .line 53
    invoke-static {v1}, Landroidx/appcompat/graphics/drawable/a;->i(Ljava/util/HashMap;)Ljava/util/Map;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const-string v2, "reason"

    .line 58
    .line 59
    invoke-direct {v0, v2, v1}, Lt6/c;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 60
    .line 61
    .line 62
    sput-object v0, Lu2/c;->c:Lt6/c;

    .line 63
    .line 64
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ly2/c;

    .line 2
    .line 3
    check-cast p2, Lt6/e;

    .line 4
    .line 5
    iget-wide v0, p1, Ly2/c;->a:J

    .line 6
    .line 7
    sget-object v2, Lu2/c;->b:Lt6/c;

    .line 8
    .line 9
    invoke-interface {p2, v2, v0, v1}, Lt6/e;->d(Lt6/c;J)Lt6/e;

    .line 10
    .line 11
    .line 12
    sget-object v0, Lu2/c;->c:Lt6/c;

    .line 13
    .line 14
    iget-object p1, p1, Ly2/c;->b:Ly2/c$a;

    .line 15
    .line 16
    invoke-interface {p2, v0, p1}, Lt6/e;->a(Lt6/c;Ljava/lang/Object;)Lt6/e;

    .line 17
    .line 18
    .line 19
    return-void
.end method
