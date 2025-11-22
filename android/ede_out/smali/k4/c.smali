.class public final Lk4/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt6/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lt6/d<",
        "Lk4/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lk4/c;

.field public static final b:Lt6/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lk4/c;

    invoke-direct {v0}, Lk4/c;-><init>()V

    sput-object v0, Lk4/c;->a:Lk4/c;

    const-string v0, "messagingClientEventExtension"

    invoke-static {v0}, Lt6/c;->b(Ljava/lang/String;)Lt6/c;

    move-result-object v0

    sput-object v0, Lk4/c;->b:Lt6/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lk4/d;

    check-cast p2, Lt6/e;

    sget-object v0, Lk4/c;->b:Lt6/c;

    invoke-virtual {p1}, Lk4/d;->a()Lh7/b;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lt6/e;->a(Lt6/c;Ljava/lang/Object;)Lt6/e;

    return-void
.end method
