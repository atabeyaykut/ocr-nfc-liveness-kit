.class public final Lva/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lva/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lva/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lva/m$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lva/m$a;

    invoke-direct {v0}, Lva/m$a;-><init>()V

    sput-object v0, Lva/m$a;->a:Lva/m$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lza/e;)V
    .locals 0

    return-void
.end method
