.class public final Lza/n$b$b;
.super Lza/n$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lza/n$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lza/n$b$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lza/n$b$b;

    invoke-direct {v0}, Lza/n$b$b;-><init>()V

    sput-object v0, Lza/n$b$b;->a:Lza/n$b$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lza/n$b;-><init>()V

    return-void
.end method
