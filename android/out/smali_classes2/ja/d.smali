.class public final Lja/d;
.super Lja/k;
.source "SourceFile"


# static fields
.field public static final f:Lja/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lja/d;

    invoke-direct {v0}, Lja/d;-><init>()V

    sput-object v0, Lja/d;->f:Lja/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    new-instance v0, Lbc/c;

    const-string v1, "DefaultBuiltIns"

    invoke-direct {v0, v1}, Lbc/c;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lja/k;-><init>(Lbc/c;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lja/k;->d(Z)V

    return-void
.end method
