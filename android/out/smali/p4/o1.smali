.class public final synthetic Lp4/o1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt6/d;


# static fields
.field public static final synthetic a:Lp4/o1;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lp4/o1;

    invoke-direct {v0}, Lp4/o1;-><init>()V

    sput-object v0, Lp4/o1;->a:Lp4/o1;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/util/Map$Entry;

    .line 2
    .line 3
    check-cast p2, Lt6/e;

    .line 4
    .line 5
    sget-object v0, Lp4/p1;->f:Ljava/nio/charset/Charset;

    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lp4/p1;->g:Lt6/c;

    .line 12
    .line 13
    invoke-interface {p2, v1, v0}, Lt6/e;->a(Lt6/c;Ljava/lang/Object;)Lt6/e;

    .line 14
    .line 15
    .line 16
    sget-object v0, Lp4/p1;->h:Lt6/c;

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-interface {p2, v0, p1}, Lt6/e;->a(Lt6/c;Ljava/lang/Object;)Lt6/e;

    .line 23
    .line 24
    .line 25
    return-void
.end method
