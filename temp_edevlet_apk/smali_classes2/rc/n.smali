.class public abstract Lrc/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrc/n$b;
    }
.end annotation


# static fields
.field public static final a:Lrc/n$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lrc/n$a;

    invoke-direct {v0}, Lrc/n$a;-><init>()V

    sput-object v0, Lrc/n;->a:Lrc/n$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
