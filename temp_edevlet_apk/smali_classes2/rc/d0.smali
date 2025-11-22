.class public abstract Lrc/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrc/d0$a;
    }
.end annotation


# static fields
.field public static final a:Lrc/d0$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lrc/d0$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lrc/d0$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lrc/d0;->a:Lrc/d0$a;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()J
.end method

.method public abstract b()Lrc/t;
.end method

.method public abstract c()Led/g;
.end method

.method public close()V
    .locals 1

    invoke-virtual {p0}, Lrc/d0;->c()Led/g;

    move-result-object v0

    invoke-static {v0}, Lsc/c;->c(Ljava/io/Closeable;)V

    return-void
.end method
