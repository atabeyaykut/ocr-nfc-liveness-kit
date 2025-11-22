.class public final Lj/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj/h$a<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lp/k;)Lj/h;
    .locals 1

    .line 1
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    new-instance v0, Lj/c;

    .line 4
    .line 5
    invoke-direct {v0, p1, p2}, Lj/c;-><init>(Ljava/nio/ByteBuffer;Lp/k;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method
