.class public final Leb/x$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leb/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leb/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Leb/x$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Leb/x$a;

    invoke-direct {v0}, Leb/x$a;-><init>()V

    sput-object v0, Leb/x$a;->a:Leb/x$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
