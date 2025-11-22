.class public final Lnc/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnc/n1;


# static fields
.field public static final a:Lnc/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnc/b;

    invoke-direct {v0}, Lnc/b;-><init>()V

    sput-object v0, Lnc/b;->a:Lnc/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Active"

    return-object v0
.end method
