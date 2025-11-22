.class public final Lu2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt6/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lt6/d<",
        "Lu2/p;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lu2/e;

.field public static final b:Lt6/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lu2/e;

    invoke-direct {v0}, Lu2/e;-><init>()V

    sput-object v0, Lu2/e;->a:Lu2/e;

    const-string v0, "clientMetrics"

    invoke-static {v0}, Lt6/c;->b(Ljava/lang/String;)Lt6/c;

    move-result-object v0

    sput-object v0, Lu2/e;->b:Lt6/c;

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
    check-cast p1, Lu2/p;

    .line 2
    .line 3
    check-cast p2, Lt6/e;

    .line 4
    .line 5
    sget-object v0, Lu2/e;->b:Lt6/c;

    .line 6
    .line 7
    invoke-virtual {p1}, Lu2/p;->a()Ly2/a;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p2, v0, p1}, Lt6/e;->a(Lt6/c;Ljava/lang/Object;)Lt6/e;

    .line 12
    .line 13
    .line 14
    return-void
.end method
