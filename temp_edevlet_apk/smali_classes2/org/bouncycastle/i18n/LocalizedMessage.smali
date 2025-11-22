.class public Lorg/bouncycastle/i18n/LocalizedMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;
    }
.end annotation


# static fields
.field public static final DEFAULT_ENCODING:Ljava/lang/String; = "ISO-8859-1"


# instance fields
.field protected arguments:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

.field protected encoding:Ljava/lang/String;

.field protected extraArgs:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

.field protected filter:Lorg/bouncycastle/i18n/filter/Filter;

.field protected final id:Ljava/lang/String;

.field protected loader:Ljava/lang/ClassLoader;

.field protected final resource:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ISO-8859-1"

    iput-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->encoding:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->extraArgs:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    iput-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->filter:Lorg/bouncycastle/i18n/filter/Filter;

    iput-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->loader:Ljava/lang/ClassLoader;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iput-object p2, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->id:Ljava/lang/String;

    iput-object p1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->resource:Ljava/lang/String;

    new-instance p1, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    invoke-direct {p1}, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->arguments:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    return-void

    :cond_0
    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ISO-8859-1"

    iput-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->encoding:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->extraArgs:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    iput-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->filter:Lorg/bouncycastle/i18n/filter/Filter;

    iput-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->loader:Ljava/lang/ClassLoader;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iput-object p2, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->id:Ljava/lang/String;

    iput-object p1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->resource:Ljava/lang/String;

    new-instance p1, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    invoke-direct {p1}, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->arguments:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    invoke-static {p3}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iput-object p3, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->encoding:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/io/UnsupportedEncodingException;

    const-string p2, "The encoding \""

    const-string v0, "\" is not supported."

    .line 1
    invoke-static {p2, p3, v0}, Landroidx/browser/browseractions/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-direct {p1, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ISO-8859-1"

    iput-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->encoding:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->extraArgs:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    iput-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->filter:Lorg/bouncycastle/i18n/filter/Filter;

    iput-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->loader:Ljava/lang/ClassLoader;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p4, :cond_1

    iput-object p2, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->id:Ljava/lang/String;

    iput-object p1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->resource:Ljava/lang/String;

    new-instance p1, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    invoke-direct {p1, p4}, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;-><init>([Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->arguments:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    invoke-static {p3}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iput-object p3, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->encoding:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/io/UnsupportedEncodingException;

    const-string p2, "The encoding \""

    const-string p4, "\" is not supported."

    .line 8
    invoke-static {p2, p3, p4}, Landroidx/browser/browseractions/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 9
    invoke-direct {p1, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ISO-8859-1"

    iput-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->encoding:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->extraArgs:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    iput-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->filter:Lorg/bouncycastle/i18n/filter/Filter;

    iput-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->loader:Ljava/lang/ClassLoader;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    iput-object p2, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->id:Ljava/lang/String;

    iput-object p1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->resource:Ljava/lang/String;

    new-instance p1, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    invoke-direct {p1, p3}, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;-><init>([Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->arguments:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    return-void

    :cond_0
    throw v0
.end method


# virtual methods
.method public addExtraArgs(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->extraArgs:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->extraArgs:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    invoke-virtual {p1, p2}, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->getFilteredArgs(Ljava/util/Locale;)[Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    array-length v1, p1

    if-ge p2, v1, :cond_0

    aget-object v1, p1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public formatWithTimeZone(Ljava/lang/String;[Ljava/lang/Object;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/text/MessageFormat;->setLocale(Ljava/util/Locale;)V

    invoke-virtual {v0, p1}, Ljava/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Ljava/text/MessageFormat;->getFormats()[Ljava/text/Format;

    move-result-object p1

    const/4 p3, 0x0

    :goto_0
    array-length v1, p1

    if-ge p3, v1, :cond_1

    aget-object v1, p1, p3

    instance-of v2, v1, Ljava/text/DateFormat;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/text/DateFormat;

    invoke-virtual {v1, p4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v0, p3, v1}, Ljava/text/MessageFormat;->setFormat(ILjava/text/Format;)V

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getArguments()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->arguments:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    invoke-virtual {v0}, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->getArguments()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->loader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getEntry(Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/i18n/MissingEntryException;
        }
    .end annotation

    .line 1
    const-string v0, "ISO-8859-1"

    .line 2
    .line 3
    iget-object v1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->id:Ljava/lang/String;

    .line 4
    .line 5
    const-string v2, "."

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-static {v1, v2, p1}, Landroidx/camera/core/impl/utils/f;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    :cond_0
    move-object v6, v1

    .line 14
    :try_start_0
    iget-object p1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->loader:Ljava/lang/ClassLoader;

    .line 15
    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    iget-object p1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->resource:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {p1, p2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->resource:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v1, p2, p1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    :goto_0
    invoke-virtual {p1, v6}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iget-object v1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->encoding:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_2

    .line 42
    .line 43
    new-instance v1, Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->encoding:Ljava/lang/String;

    .line 50
    .line 51
    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    move-object p1, v1

    .line 55
    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->arguments:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    .line 56
    .line 57
    invoke-virtual {v0}, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->isEmpty()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_3

    .line 62
    .line 63
    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->arguments:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    .line 64
    .line 65
    invoke-virtual {v0, p2}, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->getFilteredArgs(Ljava/util/Locale;)[Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/bouncycastle/i18n/LocalizedMessage;->formatWithTimeZone(Ljava/lang/String;[Ljava/lang/Object;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    :cond_3
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/i18n/LocalizedMessage;->addExtraArgs(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    return-object p1

    .line 78
    :catch_0
    move-exception p1

    .line 79
    new-instance p2, Ljava/lang/RuntimeException;

    .line 80
    .line 81
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 82
    .line 83
    .line 84
    throw p2

    .line 85
    :catch_1
    nop

    .line 86
    new-instance p1, Lorg/bouncycastle/i18n/MissingEntryException;

    .line 87
    .line 88
    const-string p3, "Can\'t find entry "

    .line 89
    .line 90
    const-string v0, " in resource file "

    .line 91
    .line 92
    invoke-static {p3, v6, v0}, Landroid/support/v4/media/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    move-result-object p3

    .line 96
    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->resource:Ljava/lang/String;

    .line 97
    .line 98
    invoke-static {p3, v0, v2}, Landroidx/camera/camera2/internal/c;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    iget-object v5, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->resource:Ljava/lang/String;

    .line 103
    .line 104
    iget-object p3, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->loader:Ljava/lang/ClassLoader;

    .line 105
    .line 106
    if-eqz p3, :cond_4

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_4
    invoke-virtual {p0}, Lorg/bouncycastle/i18n/LocalizedMessage;->getClassLoader()Ljava/lang/ClassLoader;

    .line 110
    .line 111
    .line 112
    move-result-object p3

    .line 113
    :goto_1
    move-object v8, p3

    .line 114
    move-object v3, p1

    .line 115
    move-object v7, p2

    .line 116
    invoke-direct/range {v3 .. v8}, Lorg/bouncycastle/i18n/MissingEntryException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)V

    .line 117
    .line 118
    .line 119
    throw p1
.end method

.method public getExtraArgs()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->extraArgs:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->getArguments()[Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getFilter()Lorg/bouncycastle/i18n/filter/Filter;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->filter:Lorg/bouncycastle/i18n/filter/Filter;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getResource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->resource:Ljava/lang/String;

    return-object v0
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->loader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public setExtraArgument(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lorg/bouncycastle/i18n/LocalizedMessage;->setExtraArguments([Ljava/lang/Object;)V

    return-void
.end method

.method public setExtraArguments([Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    invoke-direct {v0, p1}, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->extraArgs:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    iget-object p1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->filter:Lorg/bouncycastle/i18n/filter/Filter;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->setFilter(Lorg/bouncycastle/i18n/filter/Filter;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->extraArgs:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    :goto_0
    return-void
.end method

.method public setFilter(Lorg/bouncycastle/i18n/filter/Filter;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->arguments:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->setFilter(Lorg/bouncycastle/i18n/filter/Filter;)V

    iget-object v0, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->extraArgs:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->setFilter(Lorg/bouncycastle/i18n/filter/Filter;)V

    :cond_0
    iput-object p1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->filter:Lorg/bouncycastle/i18n/filter/Filter;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Resource: \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->resource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\" Id: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\" Arguments: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->arguments:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    invoke-virtual {v1}, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->getArguments()[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " normal"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->extraArgs:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->getArguments()[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->extraArgs:Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;

    invoke-virtual {v1}, Lorg/bouncycastle/i18n/LocalizedMessage$FilteredArguments;->getArguments()[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " extra"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v1, " Encoding: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " ClassLoader: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/bouncycastle/i18n/LocalizedMessage;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
