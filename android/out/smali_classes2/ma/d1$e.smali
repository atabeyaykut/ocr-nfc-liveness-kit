.class public final Lma/d1$e;
.super Lma/e1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lma/d1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# static fields
.field public static final c:Lma/d1$e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lma/d1$e;

    invoke-direct {v0}, Lma/d1$e;-><init>()V

    sput-object v0, Lma/d1$e;->c:Lma/d1$e;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "private"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lma/e1;-><init>(Ljava/lang/String;Z)V

    return-void
.end method
