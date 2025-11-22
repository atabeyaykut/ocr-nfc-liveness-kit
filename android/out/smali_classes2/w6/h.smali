.class public final Lw6/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw6/h$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lt6/d<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lt6/f<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final c:Lt6/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt6/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/HashMap;Ljava/util/HashMap;Lw6/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw6/h;->a:Ljava/util/Map;

    iput-object p2, p0, Lw6/h;->b:Ljava/util/Map;

    iput-object p3, p0, Lw6/h;->c:Lt6/d;

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/ByteArrayOutputStream;Ly2/a;)V
    .locals 4
    .param p1    # Ljava/io/ByteArrayOutputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ly2/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lw6/f;

    .line 2
    .line 3
    iget-object v1, p0, Lw6/h;->a:Ljava/util/Map;

    .line 4
    .line 5
    iget-object v2, p0, Lw6/h;->b:Ljava/util/Map;

    .line 6
    .line 7
    iget-object v3, p0, Lw6/h;->c:Lt6/d;

    .line 8
    .line 9
    invoke-direct {v0, p1, v1, v2, v3}, Lw6/f;-><init>(Ljava/io/ByteArrayOutputStream;Ljava/util/Map;Ljava/util/Map;Lt6/d;)V

    .line 10
    .line 11
    .line 12
    const-class p1, Ly2/a;

    .line 13
    .line 14
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lt6/d;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {v1, p2, v0}, Lt6/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    new-instance p2, Lt6/b;

    .line 27
    .line 28
    const-string v0, "No encoder for "

    .line 29
    .line 30
    invoke-static {v0, p1}, Landroidx/appcompat/graphics/drawable/a;->g(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-direct {p2, p1}, Lt6/b;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p2
.end method
