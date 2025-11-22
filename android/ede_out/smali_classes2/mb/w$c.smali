.class public final enum Lmb/w$c;
.super Lmb/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmb/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lmb/x;)V
    .locals 3

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const-string v2, "MESSAGE"

    .line 5
    .line 6
    invoke-direct {p0, v2, v0, p1, v1}, Lmb/w;-><init>(Ljava/lang/String;ILmb/x;I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final n()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
