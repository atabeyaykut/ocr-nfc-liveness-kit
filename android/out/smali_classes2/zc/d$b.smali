.class public final Lzc/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/conscrypt/ConscryptHostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzc/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lzc/d$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lzc/d$b;

    invoke-direct {v0}, Lzc/d$b;-><init>()V

    sput-object v0, Lzc/d$b;->a:Lzc/d$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
